################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
ASM_UPPER_SRCS += \
C:/ti/controlSUITE/libs/dsp/SGEN/v101/source/C28x_SGEN_LIB/SINTB360.ASM 

ASM_SRCS += \
C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_CodeStartBranch.asm \
C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_usDelay.asm \
C:/ti/controlSUITE/libs/dsp/SGEN/v101/source/C28x_SGEN_LIB/sghp1c.asm \
C:/ti/controlSUITE/libs/dsp/SGEN/v101/source/C28x_SGEN_LIB/sgti1c.asm 

C_SRCS += \
C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_CpuTimers.c \
C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_DefaultISR.c \
C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_headers/source/F2837xD_GlobalVariableDefs.c \
C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_Gpio.c \
C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_PieCtrl.c \
C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_PieVect.c \
C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_SysCtrl.c \
C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_examples_Cpu1/buffdac_sine/cpu01/buffdac_sine_cpu01.c 

ASM_UPPER_DEPS += \
./SINTB360.d 

C_DEPS += \
./F2837xD_CpuTimers.d \
./F2837xD_DefaultISR.d \
./F2837xD_GlobalVariableDefs.d \
./F2837xD_Gpio.d \
./F2837xD_PieCtrl.d \
./F2837xD_PieVect.d \
./F2837xD_SysCtrl.d \
./buffdac_sine_cpu01.d 

OBJS += \
./F2837xD_CodeStartBranch.obj \
./F2837xD_CpuTimers.obj \
./F2837xD_DefaultISR.obj \
./F2837xD_GlobalVariableDefs.obj \
./F2837xD_Gpio.obj \
./F2837xD_PieCtrl.obj \
./F2837xD_PieVect.obj \
./F2837xD_SysCtrl.obj \
./F2837xD_usDelay.obj \
./SINTB360.obj \
./buffdac_sine_cpu01.obj \
./sghp1c.obj \
./sgti1c.obj 

ASM_DEPS += \
./F2837xD_CodeStartBranch.d \
./F2837xD_usDelay.d \
./sghp1c.d \
./sgti1c.d 

ASM_UPPER_DEPS__QUOTED += \
"SINTB360.d" 

OBJS__QUOTED += \
"F2837xD_CodeStartBranch.obj" \
"F2837xD_CpuTimers.obj" \
"F2837xD_DefaultISR.obj" \
"F2837xD_GlobalVariableDefs.obj" \
"F2837xD_Gpio.obj" \
"F2837xD_PieCtrl.obj" \
"F2837xD_PieVect.obj" \
"F2837xD_SysCtrl.obj" \
"F2837xD_usDelay.obj" \
"SINTB360.obj" \
"buffdac_sine_cpu01.obj" \
"sghp1c.obj" \
"sgti1c.obj" 

C_DEPS__QUOTED += \
"F2837xD_CpuTimers.d" \
"F2837xD_DefaultISR.d" \
"F2837xD_GlobalVariableDefs.d" \
"F2837xD_Gpio.d" \
"F2837xD_PieCtrl.d" \
"F2837xD_PieVect.d" \
"F2837xD_SysCtrl.d" \
"buffdac_sine_cpu01.d" 

ASM_DEPS__QUOTED += \
"F2837xD_CodeStartBranch.d" \
"F2837xD_usDelay.d" \
"sghp1c.d" \
"sgti1c.d" 

ASM_SRCS__QUOTED += \
"C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_CodeStartBranch.asm" \
"C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_usDelay.asm" \
"C:/ti/controlSUITE/libs/dsp/SGEN/v101/source/C28x_SGEN_LIB/sghp1c.asm" \
"C:/ti/controlSUITE/libs/dsp/SGEN/v101/source/C28x_SGEN_LIB/sgti1c.asm" 

C_SRCS__QUOTED += \
"C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_CpuTimers.c" \
"C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_DefaultISR.c" \
"C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_headers/source/F2837xD_GlobalVariableDefs.c" \
"C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_Gpio.c" \
"C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_PieCtrl.c" \
"C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_PieVect.c" \
"C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_common/source/F2837xD_SysCtrl.c" \
"C:/ti/controlSUITE/device_support/F2837xD/v210/F2837xD_examples_Cpu1/buffdac_sine/cpu01/buffdac_sine_cpu01.c" 

ASM_UPPER_SRCS__QUOTED += \
"C:/ti/controlSUITE/libs/dsp/SGEN/v101/source/C28x_SGEN_LIB/SINTB360.ASM" 


