################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../freedom-metal/src/drivers/fixed-clock.c \
../freedom-metal/src/drivers/fixed-factor-clock.c \
../freedom-metal/src/drivers/inline.c \
../freedom-metal/src/drivers/riscv_clint0.c \
../freedom-metal/src/drivers/riscv_cpu.c \
../freedom-metal/src/drivers/riscv_plic0.c \
../freedom-metal/src/drivers/sifive_clic0.c \
../freedom-metal/src/drivers/sifive_fe310-g000_hfrosc.c \
../freedom-metal/src/drivers/sifive_fe310-g000_hfxosc.c \
../freedom-metal/src/drivers/sifive_fe310-g000_pll.c \
../freedom-metal/src/drivers/sifive_fe310-g000_prci.c \
../freedom-metal/src/drivers/sifive_fu540-c000_l2.c \
../freedom-metal/src/drivers/sifive_global-external-interrupts0.c \
../freedom-metal/src/drivers/sifive_gpio-buttons.c \
../freedom-metal/src/drivers/sifive_gpio-leds.c \
../freedom-metal/src/drivers/sifive_gpio-switches.c \
../freedom-metal/src/drivers/sifive_gpio0.c \
../freedom-metal/src/drivers/sifive_local-external-interrupts0.c \
../freedom-metal/src/drivers/sifive_spi0.c \
../freedom-metal/src/drivers/sifive_test0.c \
../freedom-metal/src/drivers/sifive_uart0.c 

OBJS += \
./freedom-metal/src/drivers/fixed-clock.o \
./freedom-metal/src/drivers/fixed-factor-clock.o \
./freedom-metal/src/drivers/inline.o \
./freedom-metal/src/drivers/riscv_clint0.o \
./freedom-metal/src/drivers/riscv_cpu.o \
./freedom-metal/src/drivers/riscv_plic0.o \
./freedom-metal/src/drivers/sifive_clic0.o \
./freedom-metal/src/drivers/sifive_fe310-g000_hfrosc.o \
./freedom-metal/src/drivers/sifive_fe310-g000_hfxosc.o \
./freedom-metal/src/drivers/sifive_fe310-g000_pll.o \
./freedom-metal/src/drivers/sifive_fe310-g000_prci.o \
./freedom-metal/src/drivers/sifive_fu540-c000_l2.o \
./freedom-metal/src/drivers/sifive_global-external-interrupts0.o \
./freedom-metal/src/drivers/sifive_gpio-buttons.o \
./freedom-metal/src/drivers/sifive_gpio-leds.o \
./freedom-metal/src/drivers/sifive_gpio-switches.o \
./freedom-metal/src/drivers/sifive_gpio0.o \
./freedom-metal/src/drivers/sifive_local-external-interrupts0.o \
./freedom-metal/src/drivers/sifive_spi0.o \
./freedom-metal/src/drivers/sifive_test0.o \
./freedom-metal/src/drivers/sifive_uart0.o 

C_DEPS += \
./freedom-metal/src/drivers/fixed-clock.d \
./freedom-metal/src/drivers/fixed-factor-clock.d \
./freedom-metal/src/drivers/inline.d \
./freedom-metal/src/drivers/riscv_clint0.d \
./freedom-metal/src/drivers/riscv_cpu.d \
./freedom-metal/src/drivers/riscv_plic0.d \
./freedom-metal/src/drivers/sifive_clic0.d \
./freedom-metal/src/drivers/sifive_fe310-g000_hfrosc.d \
./freedom-metal/src/drivers/sifive_fe310-g000_hfxosc.d \
./freedom-metal/src/drivers/sifive_fe310-g000_pll.d \
./freedom-metal/src/drivers/sifive_fe310-g000_prci.d \
./freedom-metal/src/drivers/sifive_fu540-c000_l2.d \
./freedom-metal/src/drivers/sifive_global-external-interrupts0.d \
./freedom-metal/src/drivers/sifive_gpio-buttons.d \
./freedom-metal/src/drivers/sifive_gpio-leds.d \
./freedom-metal/src/drivers/sifive_gpio-switches.d \
./freedom-metal/src/drivers/sifive_gpio0.d \
./freedom-metal/src/drivers/sifive_local-external-interrupts0.d \
./freedom-metal/src/drivers/sifive_spi0.d \
./freedom-metal/src/drivers/sifive_test0.d \
./freedom-metal/src/drivers/sifive_uart0.d 


# Each subdirectory must supply rules for building sources it contributes
freedom-metal/src/drivers/%.o: ../freedom-metal/src/drivers/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc.exe -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\Common\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\portable\GCC\RISC-V" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd\freedom-metal" -I"E:\private\hifive1-revb\freertos-code-r2752-trunk_hifive1\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_AT_cmd\bsp\install\include" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


