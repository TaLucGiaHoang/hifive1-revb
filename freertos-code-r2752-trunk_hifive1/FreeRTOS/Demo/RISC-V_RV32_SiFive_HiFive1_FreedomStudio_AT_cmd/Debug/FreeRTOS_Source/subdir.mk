################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/private/hifive1-revb/freertos-code-r2752-trunk_hifive1/FreeRTOS/Source/event_groups.c \
E:/private/hifive1-revb/freertos-code-r2752-trunk_hifive1/FreeRTOS/Source/list.c \
E:/private/hifive1-revb/freertos-code-r2752-trunk_hifive1/FreeRTOS/Source/queue.c \
E:/private/hifive1-revb/freertos-code-r2752-trunk_hifive1/FreeRTOS/Source/stream_buffer.c \
E:/private/hifive1-revb/freertos-code-r2752-trunk_hifive1/FreeRTOS/Source/tasks.c \
E:/private/hifive1-revb/freertos-code-r2752-trunk_hifive1/FreeRTOS/Source/timers.c 

OBJS += \
./FreeRTOS_Source/event_groups.o \
./FreeRTOS_Source/list.o \
./FreeRTOS_Source/queue.o \
./FreeRTOS_Source/stream_buffer.o \
./FreeRTOS_Source/tasks.o \
./FreeRTOS_Source/timers.o 

C_DEPS += \
./FreeRTOS_Source/event_groups.d \
./FreeRTOS_Source/list.d \
./FreeRTOS_Source/queue.d \
./FreeRTOS_Source/stream_buffer.d \
./FreeRTOS_Source/tasks.d \
./FreeRTOS_Source/timers.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS_Source/event_groups.o: E:/private/hifive1-revb/freertos-code-r2752-trunk_hifive1/FreeRTOS/Source/event_groups.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc.exe -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\Common\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\portable\GCC\RISC-V" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd\freedom-metal" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd\bsp\install\include" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeRTOS_Source/list.o: E:/private/hifive1-revb/freertos-code-r2752-trunk_hifive1/FreeRTOS/Source/list.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc.exe -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\Common\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\portable\GCC\RISC-V" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd\freedom-metal" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd\bsp\install\include" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeRTOS_Source/queue.o: E:/private/hifive1-revb/freertos-code-r2752-trunk_hifive1/FreeRTOS/Source/queue.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc.exe -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\Common\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\portable\GCC\RISC-V" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd\freedom-metal" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd\bsp\install\include" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeRTOS_Source/stream_buffer.o: E:/private/hifive1-revb/freertos-code-r2752-trunk_hifive1/FreeRTOS/Source/stream_buffer.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc.exe -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\Common\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\portable\GCC\RISC-V" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd\freedom-metal" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd\bsp\install\include" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeRTOS_Source/tasks.o: E:/private/hifive1-revb/freertos-code-r2752-trunk_hifive1/FreeRTOS/Source/tasks.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc.exe -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\Common\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\portable\GCC\RISC-V" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd\freedom-metal" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd\bsp\install\include" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FreeRTOS_Source/timers.o: E:/private/hifive1-revb/freertos-code-r2752-trunk_hifive1/FreeRTOS/Source/timers.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc.exe -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\Common\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\portable\GCC\RISC-V" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd\freedom-metal" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd\bsp\install\include" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


