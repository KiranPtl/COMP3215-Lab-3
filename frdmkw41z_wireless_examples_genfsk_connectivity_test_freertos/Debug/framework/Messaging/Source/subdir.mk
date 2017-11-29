################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../framework/Messaging/Source/Messaging.c 

OBJS += \
./framework/Messaging/Source/Messaging.o 

C_DEPS += \
./framework/Messaging/Source/Messaging.d 


# Each subdirectory must supply rules for building sources it contributes
framework/Messaging/Source/%.o: ../framework/Messaging/Source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DDEBUG -DFSL_RTOS_FREE_RTOS -DFRDM_KW41Z -DFREEDOM -D__MCUXPRESSO -D__USE_CMSIS -DSDK_OS_FREE_RTOS -DCPU_MKW41Z512VHT4 -DCPU_MKW41Z512VHT4_cm0plus -D__REDLIB__ -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\source" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\drivers" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\SerialManager\Source\I2C_Adapter" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\CMSIS" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\SecLib" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\OSAbstraction\Interface" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\SerialManager\Source\UART_Adapter" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\utilities" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\SerialManager\Source\SPI_Adapter" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\SerialManager\Interface" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\MWSCoexistence\Interface" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\board" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\Lists" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\LowPower\Interface\MKW41Z" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\LowPower\Source\MKW41Z" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\Panic\Interface" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\genfsk" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\GPIO" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\XCVR\MKW41Z4" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\common" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\FunctionLib" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\XCVR\MKW41Z4\XCVR_Test" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\DCDC\Interface" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\LED\Interface" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\freertos" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\Flash\Internal" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\ModuleInfo" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\RNG\Interface" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\TimersManager\Interface" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\TimersManager\Source" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\MemManager\Interface" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\Messaging\Interface" -I"C:\Users\Celia\Documents\MCUXpressoIDE_10.0.2_411\workspace\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos\framework\Keyboard\Interface" -O0 -fno-common -g -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -imacros "C:/Users/Celia/Documents/MCUXpressoIDE_10.0.2_411/workspace/frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos/source/app_preinclude.h" -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


