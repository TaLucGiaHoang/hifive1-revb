################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../freedom-metal/gloss/nanosleep.c \
../freedom-metal/gloss/synchronize_harts.c \
../freedom-metal/gloss/sys_access.c \
../freedom-metal/gloss/sys_chdir.c \
../freedom-metal/gloss/sys_chmod.c \
../freedom-metal/gloss/sys_chown.c \
../freedom-metal/gloss/sys_close.c \
../freedom-metal/gloss/sys_execve.c \
../freedom-metal/gloss/sys_exit.c \
../freedom-metal/gloss/sys_faccessat.c \
../freedom-metal/gloss/sys_fork.c \
../freedom-metal/gloss/sys_fstat.c \
../freedom-metal/gloss/sys_fstatat.c \
../freedom-metal/gloss/sys_ftime.c \
../freedom-metal/gloss/sys_getcwd.c \
../freedom-metal/gloss/sys_getpid.c \
../freedom-metal/gloss/sys_gettimeofday.c \
../freedom-metal/gloss/sys_isatty.c \
../freedom-metal/gloss/sys_kill.c \
../freedom-metal/gloss/sys_link.c \
../freedom-metal/gloss/sys_lseek.c \
../freedom-metal/gloss/sys_lstat.c \
../freedom-metal/gloss/sys_open.c \
../freedom-metal/gloss/sys_openat.c \
../freedom-metal/gloss/sys_read.c \
../freedom-metal/gloss/sys_sbrk.c \
../freedom-metal/gloss/sys_stat.c \
../freedom-metal/gloss/sys_sysconf.c \
../freedom-metal/gloss/sys_times.c \
../freedom-metal/gloss/sys_unlink.c \
../freedom-metal/gloss/sys_utime.c \
../freedom-metal/gloss/sys_wait.c \
../freedom-metal/gloss/sys_write.c 

S_UPPER_SRCS += \
../freedom-metal/gloss/crt0.S 

OBJS += \
./freedom-metal/gloss/crt0.o \
./freedom-metal/gloss/nanosleep.o \
./freedom-metal/gloss/synchronize_harts.o \
./freedom-metal/gloss/sys_access.o \
./freedom-metal/gloss/sys_chdir.o \
./freedom-metal/gloss/sys_chmod.o \
./freedom-metal/gloss/sys_chown.o \
./freedom-metal/gloss/sys_close.o \
./freedom-metal/gloss/sys_execve.o \
./freedom-metal/gloss/sys_exit.o \
./freedom-metal/gloss/sys_faccessat.o \
./freedom-metal/gloss/sys_fork.o \
./freedom-metal/gloss/sys_fstat.o \
./freedom-metal/gloss/sys_fstatat.o \
./freedom-metal/gloss/sys_ftime.o \
./freedom-metal/gloss/sys_getcwd.o \
./freedom-metal/gloss/sys_getpid.o \
./freedom-metal/gloss/sys_gettimeofday.o \
./freedom-metal/gloss/sys_isatty.o \
./freedom-metal/gloss/sys_kill.o \
./freedom-metal/gloss/sys_link.o \
./freedom-metal/gloss/sys_lseek.o \
./freedom-metal/gloss/sys_lstat.o \
./freedom-metal/gloss/sys_open.o \
./freedom-metal/gloss/sys_openat.o \
./freedom-metal/gloss/sys_read.o \
./freedom-metal/gloss/sys_sbrk.o \
./freedom-metal/gloss/sys_stat.o \
./freedom-metal/gloss/sys_sysconf.o \
./freedom-metal/gloss/sys_times.o \
./freedom-metal/gloss/sys_unlink.o \
./freedom-metal/gloss/sys_utime.o \
./freedom-metal/gloss/sys_wait.o \
./freedom-metal/gloss/sys_write.o 

C_DEPS += \
./freedom-metal/gloss/nanosleep.d \
./freedom-metal/gloss/synchronize_harts.d \
./freedom-metal/gloss/sys_access.d \
./freedom-metal/gloss/sys_chdir.d \
./freedom-metal/gloss/sys_chmod.d \
./freedom-metal/gloss/sys_chown.d \
./freedom-metal/gloss/sys_close.d \
./freedom-metal/gloss/sys_execve.d \
./freedom-metal/gloss/sys_exit.d \
./freedom-metal/gloss/sys_faccessat.d \
./freedom-metal/gloss/sys_fork.d \
./freedom-metal/gloss/sys_fstat.d \
./freedom-metal/gloss/sys_fstatat.d \
./freedom-metal/gloss/sys_ftime.d \
./freedom-metal/gloss/sys_getcwd.d \
./freedom-metal/gloss/sys_getpid.d \
./freedom-metal/gloss/sys_gettimeofday.d \
./freedom-metal/gloss/sys_isatty.d \
./freedom-metal/gloss/sys_kill.d \
./freedom-metal/gloss/sys_link.d \
./freedom-metal/gloss/sys_lseek.d \
./freedom-metal/gloss/sys_lstat.d \
./freedom-metal/gloss/sys_open.d \
./freedom-metal/gloss/sys_openat.d \
./freedom-metal/gloss/sys_read.d \
./freedom-metal/gloss/sys_sbrk.d \
./freedom-metal/gloss/sys_stat.d \
./freedom-metal/gloss/sys_sysconf.d \
./freedom-metal/gloss/sys_times.d \
./freedom-metal/gloss/sys_unlink.d \
./freedom-metal/gloss/sys_utime.d \
./freedom-metal/gloss/sys_wait.d \
./freedom-metal/gloss/sys_write.d 


# Each subdirectory must supply rules for building sources it contributes
freedom-metal/gloss/%.o: ../freedom-metal/gloss/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	riscv64-unknown-elf-gcc.exe -march=rv32imac -mabi=ilp32 -mcmodel=medlow -c -DportasmHANDLE_INTERRUPT=handle_trap -g3 -I"E:\private\hifive1-revb\ble\FreeRTOS\Source\portable\GCC\RISC-V\chip_specific_extensions\RV32I_CLINT_no_extensions" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

freedom-metal/gloss/%.o: ../freedom-metal/gloss/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc.exe -I"E:\private\hifive1-revb\ble\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\ble\FreeRTOS\Demo\Common\include" -I"E:\private\hifive1-revb\ble\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_BLE" -I"E:\private\hifive1-revb\ble\FreeRTOS\Source\portable\GCC\RISC-V" -I"E:\private\hifive1-revb\ble\FreeRTOS\Source\include" -I"E:\private\hifive1-revb\ble\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_BLE\freedom-metal" -I"E:\private\hifive1-revb\ble\FreeRTOS\Demo\RISC-V_RV32_SiFive_HiFive1_FreedomStudio_BLE\bsp\install\include" -O0 -g3 -Wall -Wextra -c -fmessage-length=0 -march=rv32imac -mabi=ilp32 -mcmodel=medlow -ffunction-sections -fdata-sections --specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


