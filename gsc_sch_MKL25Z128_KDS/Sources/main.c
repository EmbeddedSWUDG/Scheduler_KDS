/*
 * Copyright (c) 2015, Freescale Semiconductor, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * o Redistributions of source code must retain the above copyright notice, this list
 *   of conditions and the following disclaimer.
 *
 * o Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 *
 * o Neither the name of Freescale Semiconductor, Inc. nor the names of its
 *   contributors may be used to endorse or promote products derived from this
 *   software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

//#include "MKL25Z4.h"

#include "derivative.h" /* include peripheral declarations */
#include "mcl\CrystalClock.h"
#include "mcl\ARM_SysTick.h"
#include "gsc_scheduler\gsc_sch_core\gsc_sch_core_intf.h"

volatile unsigned int sys_tick_counter = 0;

void WatchDog_cfg(void);
/********************************************************************/
int main (void)
{

	//int i=0;

	/* Disable Watch Dog */
	WatchDog_cfg();
	/* initialize clock system for 48 MHz */
	InitClock();
	/* Configure the timer and the interrupt to be used to generate the tick of the scheduler */
	InitSysTick();
	/* Scheduler Initialization and tasks initialization  */
	gsc_sch_core_Init();
	/* Execute Scheduler */
	gsc_sch_core_exec();

	return 0;
}


 /*
  * Init watch dog
  */
 void WatchDog_cfg(void)
 {
	 /* Disable watch dog */
	 SIM_COPC |= SIM_COPC_COPT(0);
 }

 void SysTick_Handler(void)
 {
 	sys_tick_counter++;
 	gsc_sch_core_tick_isr();
 }


////////////////////////////////////////////////////////////////////////////////
// EOF
////////////////////////////////////////////////////////////////////////////////
