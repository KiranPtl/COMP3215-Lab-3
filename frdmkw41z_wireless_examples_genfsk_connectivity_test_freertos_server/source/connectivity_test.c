/************************************************************************************
* Include
************************************************************************************/
/* Drv */
#include "LED.h"
#include "Keyboard.h"

/* Fwk */
#include "MemManager.h"
#include "TimersManager.h"
#include "RNG_Interface.h"
#include "Messaging.h"
#include "SecLib.h"
#include "Panic.h"
#include "fsl_xcvr.h"
#include "fsl_os_abstraction.h"

/* KSDK */
#include "board.h"

#ifdef FSL_RTOS_FREE_RTOS
#include "FreeRTOSConfig.h"
#endif

#include "genfsk_interface.h"
#include "gen_fsk_tests.h"

#include "menus.h"
#include "connectivity_test.h"

#include "ppp-blinky.h"

/************************************************************************************
* Private macros
************************************************************************************/
#define gAppNumberOfTests_d (1)
#define App_NotifySelf() OSA_EventSet(mAppThreadEvt, gCtEvtSelfEvent_c)

#ifndef mAppIdleHook_c
#define mAppIdleHook_c 0
#endif


/************************************************************************************
* Private definitions
************************************************************************************/
typedef bool_t ( * pCtTestFunction)(ct_event_t evt, void* pAssocData);
/************************************************************************************
* Private prototypes
************************************************************************************/
/*Application main*/
static void App_Thread (uint32_t param); 
/*Application event handler*/
static void App_HandleEvents(osaEventFlags_t flags);
/*Generic FSK RX callback*/
static void App_GenFskReceiveCallback(uint8_t *pBuffer, 
                                      uint16_t bufferLength, 
                                      uint64_t timestamp, 
                                      uint8_t rssi,
                                      uint8_t crcValid);
/*Generic FSK Notification callback*/
static void App_GenFskEventNotificationCallback(genfskEvent_t event, 
                                                genfskEventStatus_t eventStatus);
/*Serial Manager UART RX callback*/
static void App_SerialCallback(void* param);
/*Application Thread notification function (sends event to application task)*/
static void App_NotifyAppThread(void);
/*Timer callback*/
static void App_TimerCallback(void* param);

/************************************************************************************
* Private memory declarations
************************************************************************************/
static uint8_t platformInitialized = 0;
/*event used by the application thread*/
static osaEventId_t mAppThreadEvt;
/*application state*/
static app_states_t mAppState = gAppStateRunning_c;
/*pointer to data associated to each event*/
static void* pEvtAssociatedData = NULL;
/*structure to store information regarding latest received packet*/
static ct_rx_indication_t mAppRxLatestPacket;
/*latest generic fsk event status*/
static genfskEventStatus_t mAppGenfskStatus;

/*extern GENFSK instance id*/
extern uint8_t mAppGenfskId;
/*extern MCU reset api*/
extern void ResetMCU(void);

/*! *********************************************************************************
* \brief  This is the first task created by the OS. This task will initialize 
*         the system
*
* \param[in]  param
*
********************************************************************************** */
void main_task(uint32_t param)
{  
    if (!platformInitialized)
    {
        uint8_t pseudoRNGSeed[20] = {0};
        
        platformInitialized = 1;
        
        hardware_init();
        
        /* Framework init */
        MEM_Init();
        TMR_Init();
        //initialize Serial Manager
        SerialManager_Init();
        LED_Init();
        SecLib_Init();
        
        RNG_Init();   
        RNG_GetRandomNo((uint32_t*)(&(pseudoRNGSeed[0])));
        RNG_GetRandomNo((uint32_t*)(&(pseudoRNGSeed[4])));
        RNG_GetRandomNo((uint32_t*)(&(pseudoRNGSeed[8])));
        RNG_GetRandomNo((uint32_t*)(&(pseudoRNGSeed[12])));
        RNG_GetRandomNo((uint32_t*)(&(pseudoRNGSeed[16])));
        RNG_SetPseudoRandomNoSeed(pseudoRNGSeed);
        
        GENFSK_Init();
        
        /* GENFSK LL Init with default register config */
        GENFSK_AllocInstance(&mAppGenfskId, NULL, NULL, NULL);   
        
        /*create app thread event*/
        mAppThreadEvt = OSA_EventCreate(TRUE);
        
        /*initialize the application interface id*/
        Serial_InitInterface(&mAppSerId, 
                             APP_SERIAL_INTERFACE_TYPE, 
                             APP_SERIAL_INTERFACE_INSTANCE);
        /*set baudrate to 115200*/
        Serial_SetBaudRate(mAppSerId, 
                           APP_SERIAL_INTERFACE_SPEED);
        /*set Serial Manager receive callback*/
        Serial_SetRxCallBack(mAppSerId, App_SerialCallback, NULL);
        
        /*allocate a timer*/
        mAppTmrId = TMR_AllocateTimer();

        /*register callbacks for the generic fsk LL */
        GENFSK_RegisterCallbacks(mAppGenfskId, App_GenFskReceiveCallback, App_GenFskEventNotificationCallback);

        /*init and provide means to notify the app thread from connectivity tests*/
        CT_GenFskInit(App_NotifyAppThread, App_TimerCallback);

        initializePpp(mAppSerId);

        // Switch these two to switch between TX and RX
        waitForPcConnectString();//TX
//        App_NotifySelf();//RX
    }
    
    /* Call application task */
    App_Thread( param );
}

/*! *********************************************************************************
* \brief  This function represents the Application task. 
*         This task reuses the stack alocated for the MainThread.
*         This function is called to process all events for the task. Events 
*         include timers, messages and any other user defined events.
* \param[in]  argument
*
********************************************************************************** */
void App_Thread (uint32_t param)
{
    osaEventFlags_t mAppThreadEvtFlags = gCtEvtWakeUp_c;
    
    while(1)
    {
        if(mAppThreadEvtFlags)
        {
        	App_HandleEvents(mAppThreadEvtFlags);/*handle app events*/
        }

        (void)OSA_EventWait(mAppThreadEvt, gCtEvtEventsAll_c, FALSE, osaWaitForever_c ,&mAppThreadEvtFlags);


        if(gUseRtos_c == 0) /*if bare-metal break while*/
        {
            break;
        } 
    }
}

/*! *********************************************************************************
* \brief  The application event handler 
*         This function is called each time there is an OS event for the AppThread
* \param[in]  flags The OS event flags specific to the Connectivity Test App.
*
********************************************************************************** */
void App_HandleEvents(osaEventFlags_t flags)
{
    switch(mAppState)
    {
    case gAppStateRunning_c: /*event handling for test currently running*/
        if(flags & gCtEvtRxDone_c)
        {
            pEvtAssociatedData = &mAppRxLatestPacket;
            CT_PacketErrorRate(gCtEvtRxDone_c, pEvtAssociatedData, 0);
        }
//        if(flags & gCtEvtTxDone_c)
//        {
//            pEvtAssociatedData = &mAppGenfskStatus;
//            if(CT_PacketErrorRate(gCtEvtTxDone_c, pEvtAssociatedData))
//            {
//                App_NotifySelf();
//            }
//        }
        if(flags & gCtEvtRxFailed_c)
        {
            CT_PacketErrorRate(gCtEvtRxFailed_c, pEvtAssociatedData, 0);
        }
        if(flags & gCtEvtSeqTimeout_c)
        {
            CT_PacketErrorRate(gCtEvtSeqTimeout_c, NULL, 0);
        }
        if(flags & gCtEvtTimerExpired_c)
        {
            pEvtAssociatedData = NULL;
            CT_PacketErrorRate(gCtEvtTimerExpired_c, pEvtAssociatedData, 0);
        }
        if(flags & gCtEvtSelfEvent_c)
        {
            CT_PacketErrorRate(gCtEvtSelfEvent_c, NULL, 0);
        }
        break;
    default:
        break;
    }
}

/*! *********************************************************************************
* \brief  This function represents the Generic FSK receive callback. 
*         This function is called each time the Generic FSK Link Layer receives a 
*         valid packet
* \param[in]  pBuffer Pointer to receive buffer as byte array
* \param[in]  timestamp Generic FSK timestamp for received packet
* \param[in]  rssi The RSSI measured during the reception of the packet
*
********************************************************************************** */
static void App_GenFskReceiveCallback(uint8_t *pBuffer, 
                                      uint16_t bufferLength, 
                                      uint64_t timestamp, 
                                      uint8_t rssi,
                                      uint8_t crcValid)
{
   mAppRxLatestPacket.pBuffer      = pBuffer;
   mAppRxLatestPacket.bufferLength = bufferLength;
   mAppRxLatestPacket.timestamp    = timestamp;
   mAppRxLatestPacket.rssi         = rssi;
   mAppRxLatestPacket.crcValid     = crcValid;
   
   /*send event to app thread*/
   OSA_EventSet(mAppThreadEvt, gCtEvtRxDone_c);
}

/*! *********************************************************************************
* \brief  This function represents the Generic FSK event notification callback. 
*         This function is called each time the Generic FSK Link Layer has 
*         a notification for the upper layer
* \param[in]  event The event that generated the notification
* \param[in]  eventStatus status of the event
*
********************************************************************************** */
static void App_GenFskEventNotificationCallback(genfskEvent_t event, 
                                                genfskEventStatus_t eventStatus)
{
   if(event & gGenfskTxEvent)
   {
       mAppGenfskStatus = eventStatus;
       /*send event done*/
       OSA_EventSet(mAppThreadEvt, gCtEvtTxDone_c);
   }
   if(event & gGenfskRxEvent)
   {
       if(eventStatus == gGenfskTimeout)
       {
           OSA_EventSet(mAppThreadEvt, gCtEvtSeqTimeout_c);
       }
       else
       {
           OSA_EventSet(mAppThreadEvt, gCtEvtRxFailed_c);
       }
   }
   /*not handling other events in this application*/
}

static void App_SerialCallback(void* param)
{
	pppReceiveHandler();
//    OSA_EventSet(mAppThreadEvt, gCtEvtUart_c);
}

static void App_NotifyAppThread(void)
{
//    App_NotifySelf();
}
static void App_TimerCallback(void* param)
{
    OSA_EventSet(mAppThreadEvt, gCtEvtTimerExpired_c);
}
