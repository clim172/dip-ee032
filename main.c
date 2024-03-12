/*
 * mian.c
 *
 *  Created on: March 2, 2023
 *      Author: Chen Shuxin & Li Yaohua
 */

#include "F28x_Project.h"
#include <math.h>

// Globals

int PWMperiod=589,phaseshift1=250,phaseshift2=250,PriSecphaseshift=500;
float duty=0.5;
int tempPRD1=0,tempPRD2=0,tempDUTY1=0,tempDUTY2=0,tempDT1=30,tempDT2=30,tempDT3=35,tempDT4=35;
int tempPHS1=0,tempPHS2=0,tempSecPS1=0,tempSecPS2=0;
int calculatePWM=0,updatePWM=0;
int TurnOn=0;

// ============================ Function Prototypes ===================================

extern void GPIO(void);
extern void GPIO_ePWM(void);
extern void InitEPwm_ALL(void);

// ======================================= Main =========================================

void main(void)
{

// Step 1. Initialize System Control:
    InitSysCtrl();

// Step 2. Initialize GPIO:
    InitGpio();

// Step 3. Clear all interrupts and initialize PIE vector table:
// Disable CPU interrupts
    DINT;

// Initialize the PIE control registers to their default state.
// The default state is all PIE interrupts disabled and flags
// are cleared.
    InitPieCtrl();

// Disable PIE interrupts and clear all PIE interrupt flags:
    IER = 0x0000;
    IFR = 0x0000;

// Initialize the PIE vector table with pointers to the shell Interrupt
// Service Routines (ISR).
// This will populate the entire table, even if the interrupt
// is not used in this example.

    InitPieVectTable();

    EINT;
    ERTM;

    GPIO();
    GPIO_ePWM();
    InitEPwm_ALL();

//
// Step 4. Initialize the Device Peripherals:
//
    EALLOW;
    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC =1; // Sync ePWM
    ClkCfgRegs.PERCLKDIVSEL.bit.EPWMCLKDIV = 0x00;
    EDIS;

    tempPRD1=500;tempPRD2=500;
    tempDUTY1=500;tempDUTY2=500;
    tempPHS1=0;tempPHS2=500;
    tempDT1=20;tempDT2=20;tempDT3=20;tempDT4=20;
    PriSecphaseshift=350;
    calculatePWM=1;updatePWM=0;
    TurnOn=0;

        while(1){
            if (TurnOn==1){
                tempPRD1=PWMperiod;
                tempPRD2=PWMperiod;
                tempDUTY1=(int)(PWMperiod*duty);
                tempDUTY2=(int)(PWMperiod*duty);
                phaseshift1=(int)(PWMperiod);
                phaseshift2=(int)(PWMperiod*0.5);
                tempPHS2=tempPHS1+phaseshift1;
                tempSecPS1=PriSecphaseshift;
                tempSecPS2=PriSecphaseshift+phaseshift2;
            }

            if (TurnOn==1){
               EPwm1Regs.TBPRD = tempPRD1;
               EPwm1Regs.CMPA.bit.CMPA = tempDUTY1;
               EPwm1Regs.TBPHS.bit.TBPHS = tempPHS1;
               EPwm1Regs.DBFED.bit.DBFED = tempDT1;
               EPwm1Regs.DBRED.bit.DBRED = tempDT1;

            // EPwm2Regs.TBPRD = 0; // Full-bridge to Half-bridge, S3 open, S4 short
               EPwm2Regs.TBPRD = tempPRD1;
               EPwm2Regs.CMPA.bit.CMPA = tempDUTY1;
               EPwm2Regs.TBPHS.bit.TBPHS = tempPHS2;
               EPwm2Regs.DBFED.bit.DBFED = tempDT2;
               EPwm2Regs.DBRED.bit.DBRED = tempDT2;
            }

           if (TurnOn==0) {
               EPwm1Regs.TBPRD = 0;
               EPwm1Regs.CMPA.bit.CMPA = 0;
               EPwm1Regs.TBPHS.bit.TBPHS = 0;
               EPwm1Regs.DBFED.bit.DBFED = 0;
               EPwm1Regs.DBRED.bit.DBRED = 0;

           //  EPwm2Regs.TBPRD = 0; // Full-bridge to Half-bridge, S3 open, S4 short
               EPwm2Regs.TBPRD = 0;
               EPwm2Regs.CMPA.bit.CMPA = 0;
               EPwm2Regs.TBPHS.bit.TBPHS = 0;
               EPwm2Regs.DBFED.bit.DBFED = 0;
               EPwm2Regs.DBRED.bit.DBRED = 0;
               }
        }
}

// End of file

