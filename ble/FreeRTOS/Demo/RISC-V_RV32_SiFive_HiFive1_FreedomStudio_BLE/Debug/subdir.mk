################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../at.c \
../debug_serial.c \
../drv_esp32.c \
../drv_spi1.c \
../esp32_AT.c \
../main.c 

OBJS += \
./at.o \
./debug_serial.o \
./drv_esp32.o \
./drv_spi1.o \
./esp32_AT.o \
./main.o 

C_DEPS += \
./at.d \
./debug_serial.d \
./drv_esp32.d \
./drv_spi1.d \
./esp32_AT.d \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc.exe -I"E:\private\hifive1-revb\ble\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\ble\FreeRTOS\Demo\Common\include" -I"E:\private\hifive1-revb\ble\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_BLE" -I"E:\private\hifive1-revb\ble\FreeRTOS\Source\portable\GCC\RISC-V" -I"E:\private\hifive1-revb\ble\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\ble\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_BLE\freedom-metal" -I"E:\private\hifive1-revb\ble\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_BLE\bsp\install\include" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


