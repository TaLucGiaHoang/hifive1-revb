################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/8.AWS-FreeRTOS-HiFive1/freertos-code-r2752-trunk_SHC_demo/FreeRTOS/Demo/Common/Minimal/TaskNotify.c \
E:/8.AWS-FreeRTOS-HiFive1/freertos-code-r2752-trunk_SHC_demo/FreeRTOS/Demo/Common/Minimal/TimerDemo.c \
E:/8.AWS-FreeRTOS-HiFive1/freertos-code-r2752-trunk_SHC_demo/FreeRTOS/Demo/Common/Minimal/blocktim.c \
E:/8.AWS-FreeRTOS-HiFive1/freertos-code-r2752-trunk_SHC_demo/FreeRTOS/Demo/Common/Minimal/dynamic.c 

OBJS += \
./full_demo/Common_Demo_Tasks/TaskNotify.o \
./full_demo/Common_Demo_Tasks/TimerDemo.o \
./full_demo/Common_Demo_Tasks/blocktim.o \
./full_demo/Common_Demo_Tasks/dynamic.o 

C_DEPS += \
./full_demo/Common_Demo_Tasks/TaskNotify.d \
./full_demo/Common_Demo_Tasks/TimerDemo.d \
./full_demo/Common_Demo_Tasks/blocktim.d \
./full_demo/Common_Demo_Tasks/dynamic.d 


# Each subdirectory must supply rules for building sources it contributes
full_demo/Common_Demo_Tasks/TaskNotify.o: E:/8.AWS-FreeRTOS-HiFive1/freertos-code-r2752-trunk_SHC_demo/FreeRTOS/Demo/Common/Minimal/TaskNotify.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc.exe -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Source\include" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Demo\Common\include" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Source\portable\GCC\RISC-V" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Source\include" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio\freedom-metal" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio\bsp\install\include" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

full_demo/Common_Demo_Tasks/TimerDemo.o: E:/8.AWS-FreeRTOS-HiFive1/freertos-code-r2752-trunk_SHC_demo/FreeRTOS/Demo/Common/Minimal/TimerDemo.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc.exe -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Source\include" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Demo\Common\include" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Source\portable\GCC\RISC-V" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Source\include" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio\freedom-metal" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio\bsp\install\include" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

full_demo/Common_Demo_Tasks/blocktim.o: E:/8.AWS-FreeRTOS-HiFive1/freertos-code-r2752-trunk_SHC_demo/FreeRTOS/Demo/Common/Minimal/blocktim.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc.exe -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Source\include" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Demo\Common\include" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Source\portable\GCC\RISC-V" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Source\include" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio\freedom-metal" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio\bsp\install\include" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

full_demo/Common_Demo_Tasks/dynamic.o: E:/8.AWS-FreeRTOS-HiFive1/freertos-code-r2752-trunk_SHC_demo/FreeRTOS/Demo/Common/Minimal/dynamic.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc.exe -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Source\include" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Demo\Common\include" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Source\portable\GCC\RISC-V" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Source\include" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio\freedom-metal" -I"E:\8.AWS-FreeRTOS-HiFive1\freertos-code-r2752-trunk_SHC_demo\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio\bsp\install\include" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


