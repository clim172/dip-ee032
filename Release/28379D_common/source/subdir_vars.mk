################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../28379D_common/source/F2837xD_CodeStartBranch.asm \
../28379D_common/source/F2837xD_DBGIER.asm \
../28379D_common/source/F2837xD_usDelay.asm 

C_SRCS += \
../28379D_common/source/F2837xD_Adc.c \
../28379D_common/source/F2837xD_CpuTimers.c \
../28379D_common/source/F2837xD_DefaultISR.c \
../28379D_common/source/F2837xD_Dma.c \
../28379D_common/source/F2837xD_ECap.c \
../28379D_common/source/F2837xD_EPwm.c \
../28379D_common/source/F2837xD_EQep.c \
../28379D_common/source/F2837xD_Emif.c \
../28379D_common/source/F2837xD_Gpio.c \
../28379D_common/source/F2837xD_I2C.c \
../28379D_common/source/F2837xD_Ipc.c \
../28379D_common/source/F2837xD_Ipc_Driver.c \
../28379D_common/source/F2837xD_Ipc_Driver_Lite.c \
../28379D_common/source/F2837xD_Ipc_Driver_Util.c \
../28379D_common/source/F2837xD_Mcbsp.c \
../28379D_common/source/F2837xD_PieCtrl.c \
../28379D_common/source/F2837xD_PieVect.c \
../28379D_common/source/F2837xD_Sci.c \
../28379D_common/source/F2837xD_Spi.c \
../28379D_common/source/F2837xD_SysCtrl.c \
../28379D_common/source/F2837xD_TempSensorConv.c \
../28379D_common/source/F2837xD_Upp.c \
../28379D_common/source/F2837xD_can.c \
../28379D_common/source/F2837xD_sci_io.c \
../28379D_common/source/F2837xD_sdfm_drivers.c \
../28379D_common/source/F2837xD_struct.c 

C_DEPS += \
./28379D_common/source/F2837xD_Adc.d \
./28379D_common/source/F2837xD_CpuTimers.d \
./28379D_common/source/F2837xD_DefaultISR.d \
./28379D_common/source/F2837xD_Dma.d \
./28379D_common/source/F2837xD_ECap.d \
./28379D_common/source/F2837xD_EPwm.d \
./28379D_common/source/F2837xD_EQep.d \
./28379D_common/source/F2837xD_Emif.d \
./28379D_common/source/F2837xD_Gpio.d \
./28379D_common/source/F2837xD_I2C.d \
./28379D_common/source/F2837xD_Ipc.d \
./28379D_common/source/F2837xD_Ipc_Driver.d \
./28379D_common/source/F2837xD_Ipc_Driver_Lite.d \
./28379D_common/source/F2837xD_Ipc_Driver_Util.d \
./28379D_common/source/F2837xD_Mcbsp.d \
./28379D_common/source/F2837xD_PieCtrl.d \
./28379D_common/source/F2837xD_PieVect.d \
./28379D_common/source/F2837xD_Sci.d \
./28379D_common/source/F2837xD_Spi.d \
./28379D_common/source/F2837xD_SysCtrl.d \
./28379D_common/source/F2837xD_TempSensorConv.d \
./28379D_common/source/F2837xD_Upp.d \
./28379D_common/source/F2837xD_can.d \
./28379D_common/source/F2837xD_sci_io.d \
./28379D_common/source/F2837xD_sdfm_drivers.d \
./28379D_common/source/F2837xD_struct.d 

OBJS += \
./28379D_common/source/F2837xD_Adc.obj \
./28379D_common/source/F2837xD_CodeStartBranch.obj \
./28379D_common/source/F2837xD_CpuTimers.obj \
./28379D_common/source/F2837xD_DBGIER.obj \
./28379D_common/source/F2837xD_DefaultISR.obj \
./28379D_common/source/F2837xD_Dma.obj \
./28379D_common/source/F2837xD_ECap.obj \
./28379D_common/source/F2837xD_EPwm.obj \
./28379D_common/source/F2837xD_EQep.obj \
./28379D_common/source/F2837xD_Emif.obj \
./28379D_common/source/F2837xD_Gpio.obj \
./28379D_common/source/F2837xD_I2C.obj \
./28379D_common/source/F2837xD_Ipc.obj \
./28379D_common/source/F2837xD_Ipc_Driver.obj \
./28379D_common/source/F2837xD_Ipc_Driver_Lite.obj \
./28379D_common/source/F2837xD_Ipc_Driver_Util.obj \
./28379D_common/source/F2837xD_Mcbsp.obj \
./28379D_common/source/F2837xD_PieCtrl.obj \
./28379D_common/source/F2837xD_PieVect.obj \
./28379D_common/source/F2837xD_Sci.obj \
./28379D_common/source/F2837xD_Spi.obj \
./28379D_common/source/F2837xD_SysCtrl.obj \
./28379D_common/source/F2837xD_TempSensorConv.obj \
./28379D_common/source/F2837xD_Upp.obj \
./28379D_common/source/F2837xD_can.obj \
./28379D_common/source/F2837xD_sci_io.obj \
./28379D_common/source/F2837xD_sdfm_drivers.obj \
./28379D_common/source/F2837xD_struct.obj \
./28379D_common/source/F2837xD_usDelay.obj 

ASM_DEPS += \
./28379D_common/source/F2837xD_CodeStartBranch.d \
./28379D_common/source/F2837xD_DBGIER.d \
./28379D_common/source/F2837xD_usDelay.d 

OBJS__QUOTED += \
"28379D_common\source\F2837xD_Adc.obj" \
"28379D_common\source\F2837xD_CodeStartBranch.obj" \
"28379D_common\source\F2837xD_CpuTimers.obj" \
"28379D_common\source\F2837xD_DBGIER.obj" \
"28379D_common\source\F2837xD_DefaultISR.obj" \
"28379D_common\source\F2837xD_Dma.obj" \
"28379D_common\source\F2837xD_ECap.obj" \
"28379D_common\source\F2837xD_EPwm.obj" \
"28379D_common\source\F2837xD_EQep.obj" \
"28379D_common\source\F2837xD_Emif.obj" \
"28379D_common\source\F2837xD_Gpio.obj" \
"28379D_common\source\F2837xD_I2C.obj" \
"28379D_common\source\F2837xD_Ipc.obj" \
"28379D_common\source\F2837xD_Ipc_Driver.obj" \
"28379D_common\source\F2837xD_Ipc_Driver_Lite.obj" \
"28379D_common\source\F2837xD_Ipc_Driver_Util.obj" \
"28379D_common\source\F2837xD_Mcbsp.obj" \
"28379D_common\source\F2837xD_PieCtrl.obj" \
"28379D_common\source\F2837xD_PieVect.obj" \
"28379D_common\source\F2837xD_Sci.obj" \
"28379D_common\source\F2837xD_Spi.obj" \
"28379D_common\source\F2837xD_SysCtrl.obj" \
"28379D_common\source\F2837xD_TempSensorConv.obj" \
"28379D_common\source\F2837xD_Upp.obj" \
"28379D_common\source\F2837xD_can.obj" \
"28379D_common\source\F2837xD_sci_io.obj" \
"28379D_common\source\F2837xD_sdfm_drivers.obj" \
"28379D_common\source\F2837xD_struct.obj" \
"28379D_common\source\F2837xD_usDelay.obj" 

C_DEPS__QUOTED += \
"28379D_common\source\F2837xD_Adc.d" \
"28379D_common\source\F2837xD_CpuTimers.d" \
"28379D_common\source\F2837xD_DefaultISR.d" \
"28379D_common\source\F2837xD_Dma.d" \
"28379D_common\source\F2837xD_ECap.d" \
"28379D_common\source\F2837xD_EPwm.d" \
"28379D_common\source\F2837xD_EQep.d" \
"28379D_common\source\F2837xD_Emif.d" \
"28379D_common\source\F2837xD_Gpio.d" \
"28379D_common\source\F2837xD_I2C.d" \
"28379D_common\source\F2837xD_Ipc.d" \
"28379D_common\source\F2837xD_Ipc_Driver.d" \
"28379D_common\source\F2837xD_Ipc_Driver_Lite.d" \
"28379D_common\source\F2837xD_Ipc_Driver_Util.d" \
"28379D_common\source\F2837xD_Mcbsp.d" \
"28379D_common\source\F2837xD_PieCtrl.d" \
"28379D_common\source\F2837xD_PieVect.d" \
"28379D_common\source\F2837xD_Sci.d" \
"28379D_common\source\F2837xD_Spi.d" \
"28379D_common\source\F2837xD_SysCtrl.d" \
"28379D_common\source\F2837xD_TempSensorConv.d" \
"28379D_common\source\F2837xD_Upp.d" \
"28379D_common\source\F2837xD_can.d" \
"28379D_common\source\F2837xD_sci_io.d" \
"28379D_common\source\F2837xD_sdfm_drivers.d" \
"28379D_common\source\F2837xD_struct.d" 

ASM_DEPS__QUOTED += \
"28379D_common\source\F2837xD_CodeStartBranch.d" \
"28379D_common\source\F2837xD_DBGIER.d" \
"28379D_common\source\F2837xD_usDelay.d" 

C_SRCS__QUOTED += \
"../28379D_common/source/F2837xD_Adc.c" \
"../28379D_common/source/F2837xD_CpuTimers.c" \
"../28379D_common/source/F2837xD_DefaultISR.c" \
"../28379D_common/source/F2837xD_Dma.c" \
"../28379D_common/source/F2837xD_ECap.c" \
"../28379D_common/source/F2837xD_EPwm.c" \
"../28379D_common/source/F2837xD_EQep.c" \
"../28379D_common/source/F2837xD_Emif.c" \
"../28379D_common/source/F2837xD_Gpio.c" \
"../28379D_common/source/F2837xD_I2C.c" \
"../28379D_common/source/F2837xD_Ipc.c" \
"../28379D_common/source/F2837xD_Ipc_Driver.c" \
"../28379D_common/source/F2837xD_Ipc_Driver_Lite.c" \
"../28379D_common/source/F2837xD_Ipc_Driver_Util.c" \
"../28379D_common/source/F2837xD_Mcbsp.c" \
"../28379D_common/source/F2837xD_PieCtrl.c" \
"../28379D_common/source/F2837xD_PieVect.c" \
"../28379D_common/source/F2837xD_Sci.c" \
"../28379D_common/source/F2837xD_Spi.c" \
"../28379D_common/source/F2837xD_SysCtrl.c" \
"../28379D_common/source/F2837xD_TempSensorConv.c" \
"../28379D_common/source/F2837xD_Upp.c" \
"../28379D_common/source/F2837xD_can.c" \
"../28379D_common/source/F2837xD_sci_io.c" \
"../28379D_common/source/F2837xD_sdfm_drivers.c" \
"../28379D_common/source/F2837xD_struct.c" 

ASM_SRCS__QUOTED += \
"../28379D_common/source/F2837xD_CodeStartBranch.asm" \
"../28379D_common/source/F2837xD_DBGIER.asm" \
"../28379D_common/source/F2837xD_usDelay.asm" 


