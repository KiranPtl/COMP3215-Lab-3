################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../framework/XCVR/MKW41Z4/dbg_ram_capture.c \
../framework/XCVR/MKW41Z4/fsl_xcvr.c \
../framework/XCVR/MKW41Z4/fsl_xcvr_trim.c \
../framework/XCVR/MKW41Z4/ifr_radio.c 

OBJS += \
./framework/XCVR/MKW41Z4/dbg_ram_capture.o \
./framework/XCVR/MKW41Z4/fsl_xcvr.o \
./framework/XCVR/MKW41Z4/fsl_xcvr_trim.o \
./framework/XCVR/MKW41Z4/ifr_radio.o 

C_DEPS += \
./framework/XCVR/MKW41Z4/dbg_ram_capture.d \
./framework/XCVR/MKW41Z4/fsl_xcvr.d \
./framework/XCVR/MKW41Z4/fsl_xcvr_trim.d \
./framework/XCVR/MKW41Z4/ifr_radio.d 


# Each subdirectory must supply rules for building sources it contributes
framework/XCVR/MKW41Z4/%.o: ../framework/XCVR/MKW41Z4/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DDEBUG -DFSL_RTOS_FREE_RTOS -DFRDM_KW41Z -DFREEDOM -D__MCUXPRESSO -D__USE_CMSIS -DSDK_OS_FREE_RTOS -DCPU_MKW41Z512VHT4 -DCPU_MKW41Z512VHT4_cm0plus -D__REDLIB__ -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\source" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\drivers" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\SerialManager\Source\I2C_Adapter" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\CMSIS" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\SecLib" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\OSAbstraction\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\SerialManager\Source\UART_Adapter" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\utilities" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\SerialManager\Source\SPI_Adapter" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\SerialManager\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\MWSCoexistence\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\board" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\Lists" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\LowPower\Interface\MKW41Z" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\LowPower\Source\MKW41Z" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\Panic\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\genfsk" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\GPIO" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\XCVR\MKW41Z4" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\common" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\FunctionLib" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\XCVR\MKW41Z4\XCVR_Test" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\DCDC\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\LED\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\freertos" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\Flash\Internal" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\ModuleInfo" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\RNG\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\TimersManager\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\TimersManager\Source" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\MemManager\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\Messaging\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\Keyboard\Interface" -O0 -fno-common -g -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -imacros "C:/Users/Kiran/Documents/Homework/COMP3215/Lab3/frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx/source/app_preinclude.h" -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


