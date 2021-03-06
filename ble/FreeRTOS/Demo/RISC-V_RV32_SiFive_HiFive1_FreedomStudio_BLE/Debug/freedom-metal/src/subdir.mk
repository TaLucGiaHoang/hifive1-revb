################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../freedom-metal/src/button.c \
../freedom-metal/src/cache.c \
../freedom-metal/src/clock.c \
../freedom-metal/src/cpu.c \
../freedom-metal/src/gpio.c \
../freedom-metal/src/interrupt.c \
../freedom-metal/src/led.c \
../freedom-metal/src/lock.c \
../freedom-metal/src/memory.c \
../freedom-metal/src/pmp.c \
../freedom-metal/src/privilege.c \
../freedom-metal/src/shutdown.c \
../freedom-metal/src/spi.c \
../freedom-metal/src/switch.c \
../freedom-metal/src/timer.c \
../freedom-metal/src/tty.c \
../freedom-metal/src/uart.c 

S_UPPER_SRCS += \
../freedom-metal/src/entry.S \
../freedom-metal/src/trap.S 

OBJS += \
./freedom-metal/src/button.o \
./freedom-metal/src/cache.o \
./freedom-metal/src/clock.o \
./freedom-metal/src/cpu.o \
./freedom-metal/src/entry.o \
./freedom-metal/src/gpio.o \
./freedom-metal/src/interrupt.o \
./freedom-metal/src/led.o \
./freedom-metal/src/lock.o \
./freedom-metal/src/memory.o \
./freedom-metal/src/pmp.o \
./freedom-metal/src/privilege.o \
./freedom-metal/src/shutdown.o \
./freedom-metal/src/spi.o \
./freedom-metal/src/switch.o \
./freedom-metal/src/timer.o \
./freedom-metal/src/trap.o \
./freedom-metal/src/tty.o \
./freedom-metal/src/uart.o 

C_DEPS += \
./freedom-metal/src/button.d \
./freedom-metal/src/cache.d \
./freedom-metal/src/clock.d \
./freedom-metal/src/cpu.d \
./freedom-metal/src/gpio.d \
./freedom-metal/src/interrupt.d \
./freedom-metal/src/led.d \
./freedom-metal/src/lock.d \
./freedom-metal/src/memory.d \
./freedom-metal/src/pmp.d \
./freedom-metal/src/privilege.d \
./freedom-metal/src/shutdown.d \
./freedom-metal/src/spi.d \
./freedom-metal/src/switch.d \
./freedom-metal/src/timer.d \
./freedom-metal/src/tty.d \
./freedom-metal/src/uart.d 


# Each subdirectory must supply rules for building sources it contributes
freedom-metal/src/%.o: ../freedom-metal/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc.exe -I"E:\private\hifive1-revb\ble\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\ble\FreeRTOS\Demo\Common\include" -I"E:\private\hifive1-revb\ble\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_BLE" -I"E:\private\hifive1-revb\ble\FreeRTOS\Source\portable\GCC\RISC-V" -I"E:\private\hifive1-revb\ble\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\ble\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_BLE\freedom-metal" -I"E:\private\hifive1-revb\ble\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_BLE\bsp\install\include" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

freedom-metal/src/%.o: ../freedom-metal/src/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	riscv64-unknown-elf-gcc.exe -march=rv32imac -mabi=ilp32 -mcmodel=medlow -c -DportasmHANDLE_INTERRUPT=handle_trap -g3 -I"E:\private\hifive1-revb\ble\FreeRTOS\Source\portable\GCC\RISC-V\chip_specific_extensions\RV32I_CLINT_no_extensions" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


