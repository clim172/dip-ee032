/*
 * ePWM.c
 *
 *  Created on: 2023Äê3ÔÂ19ÈÕ
 *      Author: Chen Shuxin & Li Yaohua
 */

#include "F2837xD_device.h"
#include "F2837xD_EPwm_defines.h"



void InitEPwm_ALL(void){

       EALLOW;
            CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 0;             // disable TBCLK within the EPWM
       EDIS;

       EALLOW;

// EPwm1 (Master)

   // Time Base SubModule Registers
        EPwm1Regs.TBCTL.bit.PRDLD = TB_SHADOW; // set shadow load
        EPwm1Regs.TBPRD = 1000;  //set period, fs= 200M /HSPCLKDIV/CLKDIV/(TBPRD*2 in updown) = 100 kHz w/ DIV=1,PRD=1000
        EPwm1Regs.TBPHS.bit.TBPHS = 0; // phase shift = 0
        // EPwm1Regs.TBPHS.bit.TBPHSHR = 0; // HR phase shift
        EPwm1Regs.TBCTR = 0; // Clear Counter
        EPwm1Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN; // count up-down mode
        EPwm1Regs.TBCTL.bit.HSPCLKDIV = TB_DIV1;     //set resolution (clk prescaler = 0 )
        EPwm1Regs.TBCTL.bit.CLKDIV = TB_DIV1;        //set resolution (clk prescaler = 0)
        EPwm1Regs.TBCTL.bit.FREE_SOFT = 11;     // Emulation Mode Bits - select the behavior of the ePWM TBCTR during emulation events
        EPwm1Regs.TBCTL.bit.PHSEN = TB_ENABLE;  // Phase shift enable
        EPwm1Regs.TBCTL.bit.SYNCOSEL = TB_CTR_ZERO; // SYNC out selection: CTR = 0
        EPwm1Regs.TBCTL.bit.PHSDIR = TB_DOWN;   // set to count down after sync -  ignored unless up-down mode
        // EPwm1Regs.TBCTL2 // use if necessary

   // Counter Compare Submodule Registers
        EPwm1Regs.CMPA.bit.CMPA = 1000; // set xA duty 100% initially
        EPwm1Regs.CMPA.bit.CMPAHR = 0; // high resolution
        EPwm1Regs.CMPB.bit.CMPB = 0; // not in used
        EPwm1Regs.CMPB.bit.CMPBHR = 0; // not in used
        EPwm1Regs.CMPCTL.bit.SHDWAMODE = CC_SHADOW; // shadow mode
        EPwm1Regs.CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;
        EPwm1Regs.CMPCTL.bit.SHDWBMODE = CC_SHADOW; // shadow mode
        EPwm1Regs.CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;

   // Action Qualifier SubModule Registers
        EPwm1Regs.AQCTLA.bit.CAU = AQ_SET; // set epwmA at high @ compA up
        EPwm1Regs.AQCTLA.bit.CAD = AQ_CLEAR;// set epwmA at low @ compA down

   // Deadband SubModule Registers
        EPwm1Regs.DBCTL.bit.HALFCYCLE = 0; // CLK is same as TBCLK
        EPwm1Regs.DBCTL.bit.DEDB_MODE = 0; // No dual mode S8=0
        EPwm1Regs.DBCTL.bit.OUTSWAP = 0; // No output swap S6=0,S7=0
        EPwm1Regs.DBCTL.bit.IN_MODE = 0; // use EPWMxA as source S4=0,S5=0
        EPwm1Regs.DBCTL.bit.POLSEL = 2; // polarity selection, S3=1 (invert B signal), S2=0
        EPwm1Regs.DBCTL.bit.OUT_MODE = 3; // out mode, all output delayed, S1=1,S0=1

        EPwm1Regs.DBCTL.bit.SHDWDBFEDMODE = 1; //shadow
        EPwm1Regs.DBCTL.bit.SHDWDBREDMODE = 1; // shadow
        EPwm1Regs.DBCTL.bit.LOADFEDMODE = CC_CTR_ZERO; // load on CTR=0
        EPwm1Regs.DBCTL.bit.LOADREDMODE = CC_CTR_ZERO; // load on CTR=0

        EPwm1Regs.DBFED.bit.DBFED = 5;  // Deadtime is 332n (1/60MHz)*20      Literature SPRUGE9E, Table 44
        EPwm1Regs.DBRED.bit.DBRED = 5;  //                                    Literature SPRUGE9E, Table 43


//  EPwm2 (Slave)

   // Time Base SubModule Registers
        EPwm2Regs.TBCTL.bit.PRDLD = TB_SHADOW; // set shadow load
        EPwm2Regs.TBPRD = 1000; // set period, fs= 200M /HSPCLKDIV/CLKDIV/(TBPRD*2 in updown) = 100 kHz w/ DIV=1,PRD=1000
        EPwm2Regs.TBPHS.bit.TBPHS = 1000; // phase shift = 180
        // EPwm2Regs.TBPHS.bit.TBPHSHR = 0; // HR phase shift
        EPwm2Regs.TBCTR = 0; // Reset Counter
        EPwm2Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN; // count up-down mode
        EPwm2Regs.TBCTL.bit.HSPCLKDIV = TB_DIV1;     //set resolution (clk prescaler = 0 )
        EPwm2Regs.TBCTL.bit.CLKDIV = TB_DIV1;        //set resolution (clk prescaler = 0)
        EPwm2Regs.TBCTL.bit.FREE_SOFT = 11;     // Emulation Mode Bits - select the behavior of the ePWM TBCTR during emulation events
        EPwm2Regs.TBCTL.bit.PHSEN = TB_ENABLE;  // Phase shift enable
        // EPwm2Regs.TBCTL.bit.SYNCOSEL = TB_SYNC_IN; // SYNC out selection: CTR = 0
        EPwm2Regs.TBCTL.bit.SYNCOSEL = TB_SYNC_DISABLE; // SYNC out selection: CTR = 0
        EPwm2Regs.TBCTL.bit.PHSDIR = TB_DOWN;   // set to count down after sync -  ignored unless up-down mode
        // EPwm2Regs.TBCTL2 // use if necessary

   // Counter Compare Submodule Registers
        EPwm2Regs.CMPA.bit.CMPA = 1000; // set xA duty 100% initially
        EPwm2Regs.CMPA.bit.CMPAHR = 0; // high resolution
        EPwm2Regs.CMPB.bit.CMPB = 0; // not in used
        EPwm2Regs.CMPB.bit.CMPBHR = 0; // not in used
        EPwm2Regs.CMPCTL.bit.SHDWAMODE = CC_SHADOW; // shadow mode
        EPwm2Regs.CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;
        EPwm2Regs.CMPCTL.bit.SHDWBMODE = CC_SHADOW; // shadow mode
        EPwm2Regs.CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;

   // Action Qualifier SubModule Registers
        EPwm2Regs.AQCTLA.bit.CAU = AQ_SET; // set epwmA at high @ compA up
        EPwm2Regs.AQCTLA.bit.CAD = AQ_CLEAR;// set epwmA at low @ compA down

   // Deadband SubModule Registers
        EPwm2Regs.DBCTL.bit.HALFCYCLE = 0; // CLK is same as TBCLK
        EPwm2Regs.DBCTL.bit.DEDB_MODE = 0; // No dual mode S8=0
        EPwm2Regs.DBCTL.bit.OUTSWAP = 0; // No output swap S6=0,S7=0
        EPwm2Regs.DBCTL.bit.IN_MODE = 0; // use EPWMxA as source S4=0,S5=0
        EPwm2Regs.DBCTL.bit.POLSEL = 2; // polarity selection, S3=1 (invert B signal), S2=0
        EPwm2Regs.DBCTL.bit.OUT_MODE = 3; // out mode, all output delayed, S1=1,S0=1

        EPwm2Regs.DBCTL.bit.SHDWDBFEDMODE = 1; //shadow
        EPwm2Regs.DBCTL.bit.SHDWDBREDMODE = 1; // shadow
        EPwm2Regs.DBCTL.bit.LOADFEDMODE = CC_CTR_ZERO; // load on CTR=0
        EPwm2Regs.DBCTL.bit.LOADREDMODE = CC_CTR_ZERO; // load on CTR=0

        EPwm2Regs.DBFED.bit.DBFED = 5;  // Deadtime is 332n (1/60MHz)*20      Literature SPRUGE9E, Table 44
        EPwm2Regs.DBRED.bit.DBRED = 5;  //                                    Literature SPRUGE9E, Table 43

        EDIS;
}

