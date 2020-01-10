################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/private/hifive1-revb/ble/FreeRTOS/Source/portable/GCC/RISC-V/port.c 

S_UPPER_SRCS += \
E:/private/hifive1-revb/ble/FreeRTOS/Source/portable/GCC/RISC-V/portASM.S 

OBJS += \
./FreeRTOS_Source/portable/GCC/RISC-V/port.o \
./FreeRTOS_Source/portable/GCC/RISC-V/portASM.o 

C_DEPS += \
./FreeRTOS_Source/portable/GCC/RISC-V/port.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS_Source/portable/GCC/RISC-V/port.o: E:/private/hifive1-revb/ble/FreeRTOS/Source/portable/GCC/RISC-V/port.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc.exe -I"E:\private\hifive1-revb\ble\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\ble\FreeRTOS\Demo\Common\include" -I"E:\private\hifive1-revb\ble\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_BLE" -I"E:\private\hifive1-revb\ble\FreeRTOS\Source\portable\GCC\RISC-V" -I"E:\private\hifive1-revb\ble\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\ble\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_BLE\freedom-metal" -I"E:\private\hifive1-revb\ble\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_BLE\bsp\install\include" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeRTOS_Source/portable/GCC/RISC-V/portASM.o: E:/private/hifive1-revb/ble/FreeRTOS/Source/portable/GCC/RISC-V/portASM.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	riscv64-unknown-elf-gcc.exe -march=rv32imac -mabi=ilp32 -mcmodel=medlow -c -DportasmHANDLE_INTERRUPT=handle_trap -g3 -I"E:\private\hifive1-revb\ble\FreeRTOS\Source\portable\GCC\RISC-V\chip_specific_extensions\RV32I_CLINT_no_extensions" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


