################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../blinky_demo/main_blinky.c 

OBJS += \
./blinky_demo/main_blinky.o 

C_DEPS += \
./blinky_demo/main_blinky.d 


# Each subdirectory must supply rules for building sources it contributes
blinky_demo/%.o: ../blinky_demo/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc.exe -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\Common\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\portable\GCC\RISC-V" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd\freedom-metal" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd\bsp\install\include" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


