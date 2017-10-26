################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Sources/gsc_scheduler/periodic_tasks/periodic_tasks_exec.c \
../Sources/gsc_scheduler/periodic_tasks/periodic_tasks_init.c 

OBJS += \
./Sources/gsc_scheduler/periodic_tasks/periodic_tasks_exec.o \
./Sources/gsc_scheduler/periodic_tasks/periodic_tasks_init.o 

C_DEPS += \
./Sources/gsc_scheduler/periodic_tasks/periodic_tasks_exec.d \
./Sources/gsc_scheduler/periodic_tasks/periodic_tasks_init.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/gsc_scheduler/periodic_tasks/%.o: ../Sources/gsc_scheduler/periodic_tasks/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"../Sources" -I"../Includes" -I"C:\Users\uidp3590\Scheduler_KDS\gsc_sch_MKL25Z128_KDS\Sources\sys" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


