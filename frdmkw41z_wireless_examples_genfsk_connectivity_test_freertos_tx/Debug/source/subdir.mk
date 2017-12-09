################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/connectivity_test.c \
../source/gen_fsk_tests.c \
../source/menus.c \
../source/ppp-blinky.c \
../source/sha1.c 

OBJS += \
./source/connectivity_test.o \
./source/gen_fsk_tests.o \
./source/menus.o \
./source/ppp-blinky.o \
./source/sha1.o 

C_DEPS += \
./source/connectivity_test.d \
./source/gen_fsk_tests.d \
./source/menus.d \
./source/ppp-blinky.d \
./source/sha1.d 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DDEBUG -DFSL_RTOS_FREE_RTOS -DFRDM_KW41Z -DFREEDOM -D__MCUXPRESSO -D__USE_CMSIS -DSDK_OS_FREE_RTOS -DCPU_MKW41Z512VHT4 -DCPU_MKW41Z512VHT4_cm0plus -D__REDLIB__ -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\source" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\drivers" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\SerialManager\Source\I2C_Adapter" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\CMSIS" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\SecLib" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\OSAbstraction\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\SerialManager\Source\UART_Adapter" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\utilities" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\SerialManager\Source\SPI_Adapter" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\SerialManager\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\MWSCoexistence\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\board" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\Lists" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\LowPower\Interface\MKW41Z" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\LowPower\Source\MKW41Z" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\Panic\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\genfsk" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\GPIO" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\XCVR\MKW41Z4" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\common" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\FunctionLib" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\XCVR\MKW41Z4\XCVR_Test" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\DCDC\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\LED\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\freertos" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\Flash\Internal" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\ModuleInfo" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\RNG\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\TimersManager\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\TimersManager\Source" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\MemManager\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\Messaging\Interface" -I"C:\Users\Kiran\Documents\Homework\COMP3215\Lab3\frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx\framework\Keyboard\Interface" -O0 -fno-common -g -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -imacros "C:/Users/Kiran/Documents/Homework/COMP3215/Lab3/frdmkw41z_wireless_examples_genfsk_connectivity_test_freertos_tx/source/app_preinclude.h" -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


