################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/hifive1-revb/freertos-code-r2752-trunk_SHC_demo/FreeRTOS/Source/portable/GCC/RISC-V/port.c 

S_UPPER_SRCS += \
D:/hifive1-revb/freertos-code-r2752-trunk_SHC_demo/FreeRTOS/Source/portable/GCC/RISC-V/portASM.S 

OBJS += \
./FreeRTOS_Source/portable/GCC/RISC-V/port.o \
./FreeRTOS_Source/portable/GCC/RISC-V/portASM.o 

C_DEPS += \
./FreeRTOS_Source/portable/GCC/RISC-V/port.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS_Source/portable/GCC/RISC-V/port.o: D:/hifive1-revb/freertos-code-r2752-trunk_SHC_demo/FreeRTOS/Source/portable/GCC/RISC-V/port.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc.exe -I"D:\hifive1-revb\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Source\include" -I"D:\hifive1-revb\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Demo\Common\include" -I"D:\hifive1-revb\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd" -I"D:\hifive1-revb\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Source\portable\GCC\RISC-V" -I"D:\hifive1-revb\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Source\include" -I"D:\hifive1-revb\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd\freedom-metal" -I"D:\hifive1-revb\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd\bsp\install\include" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeRTOS_Source/portable/GCC/RISC-V/portASM.o: D:/hifive1-revb/freertos-code-r2752-trunk_SHC_demo/FreeRTOS/Source/portable/GCC/RISC-V/portASM.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	riscv64-unknown-elf-gcc.exe -march=rv32imac -mabi=ilp32 -mcmodel=medlow -c -DportasmHANDLE_INTERRUPT=handle_trap -g3 -I"D:\hifive1-revb\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Source\portable\GCC\RISC-V\chip_specific_extensions\RV32I_CLINT_no_extensions" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

