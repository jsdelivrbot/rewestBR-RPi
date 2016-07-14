################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../apl/src/main.cpp 

OBJS += \
./apl/src/main.o 

CPP_DEPS += \
./apl/src/main.d 


# Each subdirectory must supply rules for building sources it contributes
apl/src/%.o: ../apl/src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	arm-linux-g++ -I"/home/rafael/projects/rewest/apl/include" -I"/home/rafael/projects/rewest/middleware/include" -I"/home/rafael/projects/rewest/hal/include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


