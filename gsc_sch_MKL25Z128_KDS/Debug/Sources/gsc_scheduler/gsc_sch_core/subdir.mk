################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Sources/gsc_scheduler/gsc_sch_core/gsc_sch_core.c \
../Sources/gsc_scheduler/gsc_sch_core/gsc_sch_core_cfg.c \
../Sources/gsc_scheduler/gsc_sch_core/gsc_sch_core_tick_isr.c 

OBJS += \
./Sources/gsc_scheduler/gsc_sch_core/gsc_sch_core.o \
./Sources/gsc_scheduler/gsc_sch_core/gsc_sch_core_cfg.o \
./Sources/gsc_scheduler/gsc_sch_core/gsc_sch_core_tick_isr.o 

C_DEPS += \
./Sources/gsc_scheduler/gsc_sch_core/gsc_sch_core.d \
./Sources/gsc_scheduler/gsc_sch_core/gsc_sch_core_cfg.d \
./Sources/gsc_scheduler/gsc_sch_core/gsc_sch_core_tick_isr.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/gsc_scheduler/gsc_sch_core/%.o: ../Sources/gsc_scheduler/gsc_sch_core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"../Sources" -I"../Includes" -I"C:\Users\uidp3590\Scheduler_KDS\gsc_sch_MKL25Z128_KDS\Sources\sys" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


