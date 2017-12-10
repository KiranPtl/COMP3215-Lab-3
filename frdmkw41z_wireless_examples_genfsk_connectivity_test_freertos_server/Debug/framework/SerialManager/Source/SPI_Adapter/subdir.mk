################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../framework/SerialManager/Source/SPI_Adapter/SPI_Adapter.c 

OBJS += \
./framework/SerialManager/Source/SPI_Adapter/SPI_Adapter.o 

C_DEPS += \
./framework/SerialManager/Source/SPI_Adapter/SPI_Adapter.d 


# Each subdirectory must supply rules for building sources it contributes
framework/SerialManager/Source/SPI_Adapter/%.o: ../framework/SerialManager/Source/SPI_Adapter/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DDEBUG -DFSL_RTOS_FREE_RTOS -DFRDM_KW41Z -DFREEDOM -D__MCUXPRESSO -D__USE_CMSIS -DSDK_OS_FREE_RTOS -DCPU_MKW41Z512VHT4 -DCPU_MKW41Z512VHT4_cm0plus -D__REDLIB__ -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\source" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\drivers" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\SerialManager\Source\I2C_Adapter" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\CMSIS" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\SecLib" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\OSAbstraction\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\SerialManager\Source\UART_Adapter" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\utilities" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\SerialManager\Source\SPI_Adapter" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\SerialManager\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\MWSCoexistence\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\board" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\Lists" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\LowPower\Interface\MKW41Z" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\LowPower\Source\MKW41Z" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\Panic\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\genfsk" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\GPIO" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\XCVR\MKW41Z4" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\common" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\FunctionLib" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\XCVR\MKW41Z4\XCVR_Test" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\DCDC\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\LED\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\freertos" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\Flash\Internal" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\ModuleInfo" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\RNG\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\TimersManager\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\TimersManager\Source" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\MemManager\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\Messaging\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server\framework\Keyboard\Interface" -O0 -fno-common -g -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -imacros "C:/Users/Kiran/Documents/Homework/COMP3215/Lab3/frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_server/source/app_preinclude.h" -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


