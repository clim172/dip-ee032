/*
 * GPIO.c
 *
 *  Created on: 2023Äê3ÔÂ19ÈÕ
 *      Author: Chen Shuxin & Li Yaohua
 */

#include "F28x_Project.h"

#define GPIO_MUX_CPU1       0x0
#define GPIO_MUX_CPU1CLA    0x1



void GPIO(void){

    EALLOW;

//=============================== GPIO-EPWM1¡B2¡B7 =====================================

    GpioCtrlRegs.GPAPUD.bit.GPIO0 = 1;    // disable pullup on GPIO0
    GpioCtrlRegs.GPAPUD.bit.GPIO1 = 1;    // disable pullup on GPIO1
    GpioCtrlRegs.GPAPUD.bit.GPIO2 = 1;    // disable pullup on GPIO2
    GpioCtrlRegs.GPAPUD.bit.GPIO3 = 1;    // disable pullup on GPIO3


    GpioCtrlRegs.GPAMUX2.bit.GPIO25 = 0;  // Set GPIO25 as GPIO
    GpioCtrlRegs.GPADIR.bit.GPIO25 = 0;   // GPIO25 = input
    GPIO_SetupXINT1Gpio(25);              // XINT1 connected to GPIO25

    GpioCtrlRegs.GPAMUX2.bit.GPIO26 = 0;  // GPIO26 = GPIO26
    GpioCtrlRegs.GPADIR.bit.GPIO26 = 0;   // GPIO26 = input
    GPIO_SetupXINT2Gpio(26);              // XINT2 connected to GPIO26

    EDIS;
}

void GPIO_ePWM(void){
    // Enable PWM1-2 on GPIO0-GPIO3
    EALLOW;

    GpioCtrlRegs.GPAPUD.bit.GPIO0 = 0;   // Enable pullup on GPIO0
    GpioCtrlRegs.GPAPUD.bit.GPIO1 = 0;   // Enable pullup on GPIO1
    GpioCtrlRegs.GPAPUD.bit.GPIO2 = 0;   // Enable pullup on GPIO2
    GpioCtrlRegs.GPAPUD.bit.GPIO3 = 0;   // Enable pullup on GPIO3

    GpioCtrlRegs.GPAMUX1.bit.GPIO0 = 1;  // GPIO0 = PWM1A
    GpioCtrlRegs.GPAMUX1.bit.GPIO1 = 1;  // GPIO1 = PWM1B
    GpioCtrlRegs.GPAMUX1.bit.GPIO2 = 1;  // GPIO2 = PWM2A
    GpioCtrlRegs.GPAMUX1.bit.GPIO3 = 1;  // GPIO3 = PWM2B

    EDIS;
}

