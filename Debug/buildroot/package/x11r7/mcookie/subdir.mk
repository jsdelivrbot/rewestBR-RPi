################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../buildroot/package/x11r7/mcookie/mcookie.c 

OBJS += \
./buildroot/package/x11r7/mcookie/mcookie.o 

C_DEPS += \
./buildroot/package/x11r7/mcookie/mcookie.d 


# Each subdirectory must supply rules for building sources it contributes
buildroot/package/x11r7/mcookie/%.o: ../buildroot/package/x11r7/mcookie/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-linux-gcc -I"/home/rafael/projects/rewest/apl/include" -I"/home/rafael/projects/rewest/middleware/include" -I"/home/rafael/projects/rewest/hal/include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


