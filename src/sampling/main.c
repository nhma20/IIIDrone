/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "xbram.h"
#include "xgpio.h"

//#define DEBUG

#define BRAM(A)     ((volatile u32*)px_config->MemBaseAddress)[A]
#define BRAM_FP(A) 	((volatile float*)px_config->MemBaseAddress)[A]

XGpio 				x_gpio;

XBram             	x_bram;
XBram_Config    	*px_config;

uint8_t 		ucAXIInit();

int main()
{
    init_platform();

	ucAXIInit();

	uint16_t 		pus_mag_readings[12];

//	uint32_t		pf_mmw_readings[24];

	float			pf_mmw_readings[24];

	char			buffer[1000];

    while(1)
    {
		pus_mag_readings[0]		= 	(uint16_t)BRAM(0);
		pus_mag_readings[1]		= 	(uint16_t)BRAM(1);
		pus_mag_readings[2]		= 	(uint16_t)BRAM(2);
		pus_mag_readings[3]		= 	(uint16_t)BRAM(3);
		pus_mag_readings[4]		= 	(uint16_t)BRAM(4);
		pus_mag_readings[5]		= 	(uint16_t)BRAM(5);
		pus_mag_readings[6]		= 	(uint16_t)BRAM(6);
		pus_mag_readings[7]		= 	(uint16_t)BRAM(7);
		pus_mag_readings[8]		= 	(uint16_t)BRAM(8);
		pus_mag_readings[9]		= 	(uint16_t)BRAM(9);
		pus_mag_readings[10]	= 	(uint16_t)BRAM(10);
		pus_mag_readings[11]	= 	(uint16_t)BRAM(11);

		pf_mmw_readings[0]		=	BRAM_FP(12);
		pf_mmw_readings[1]		=	BRAM_FP(13);
		pf_mmw_readings[2]		=	BRAM_FP(14);
		pf_mmw_readings[3]		=	BRAM_FP(15);
		pf_mmw_readings[4]		=	BRAM_FP(16);
		pf_mmw_readings[5]		=	BRAM_FP(17);
		pf_mmw_readings[6]		=	BRAM_FP(18);
		pf_mmw_readings[7]		=	BRAM_FP(19);
		pf_mmw_readings[8]		=	BRAM_FP(20);
		pf_mmw_readings[9]		=	BRAM_FP(21);
		pf_mmw_readings[10]		=	BRAM_FP(22);
		pf_mmw_readings[11]		=	BRAM_FP(23);
		pf_mmw_readings[12]		=	BRAM_FP(24);
		pf_mmw_readings[13]		=	BRAM_FP(25);
		pf_mmw_readings[14]		=	BRAM_FP(26);
		pf_mmw_readings[15]		=	BRAM_FP(27);
		pf_mmw_readings[16]		=	BRAM_FP(28);
		pf_mmw_readings[17]		=	BRAM_FP(29);
		pf_mmw_readings[18]		=	BRAM_FP(30);
		pf_mmw_readings[19]		=	BRAM_FP(31);
		pf_mmw_readings[20]		=	BRAM_FP(32);
		pf_mmw_readings[21]		=	BRAM_FP(33);
		pf_mmw_readings[22]		=	BRAM_FP(34);
		pf_mmw_readings[23]		=	BRAM_FP(35);


		xil_printf("%u\t%u\t%u\t\t\t%u\t%u\t%u\t\t\t%u\t%u\t%u\t\t\t%u\t%u\t%u\t",
				pus_mag_readings[0], pus_mag_readings[1], pus_mag_readings[2],
				pus_mag_readings[3], pus_mag_readings[4], pus_mag_readings[5],
				pus_mag_readings[6], pus_mag_readings[7], pus_mag_readings[8],
				pus_mag_readings[9], pus_mag_readings[10], pus_mag_readings[11]
		);

		sprintf(buffer, "%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\n\r",
				pf_mmw_readings[0],
				pf_mmw_readings[1],
				pf_mmw_readings[2],
				pf_mmw_readings[3],
				pf_mmw_readings[4],
				pf_mmw_readings[5],
				pf_mmw_readings[6],
				pf_mmw_readings[7],
				pf_mmw_readings[8],
				pf_mmw_readings[9],
				pf_mmw_readings[10],
				pf_mmw_readings[11],
				pf_mmw_readings[12],
				pf_mmw_readings[13],
				pf_mmw_readings[14],
				pf_mmw_readings[15],
				pf_mmw_readings[16],
				pf_mmw_readings[17],
				pf_mmw_readings[18],
				pf_mmw_readings[19],
				pf_mmw_readings[20],
				pf_mmw_readings[21],
				pf_mmw_readings[22],
				pf_mmw_readings[23]
		);

		xil_printf(buffer);

    }

#ifdef DEBUG
    print("Finalized\n\r");
#endif
    cleanup_platform();
    return 0;
}

uint8_t 	ucAXIInit()
{
	// GPIO Initialization
#ifdef DEBUG
	xil_printf("Initializing GPIO...\n\r");
#endif
	int x_status 	= 	XGpio_Initialize(&x_gpio, XPAR_GPIO_0_DEVICE_ID);

	if (x_status != XST_SUCCESS)
	{
		return 0;
	}

	XGpio_SetDataDirection(&x_gpio, 1, 0xFFFFFFF9);

#ifdef DEBUG
	xil_printf("Done.\r\n");
#endif

	// BRAM initialization
#ifdef DEBUG
	xil_printf("Initializing BRAM...\n\r");
#endif

	px_config = XBram_LookupConfig(XPAR_BRAM_0_DEVICE_ID);
	if (px_config == (XBram_Config *) NULL) {
		return XST_FAILURE;
	}

	x_status 	= 	XBram_CfgInitialize(&x_bram, px_config,
			px_config->CtrlBaseAddress);

	if (x_status != XST_SUCCESS) {
		return 0;
	}

#ifdef DEBUG
	xil_printf("Done.\r\n");
#endif

	return 1;
}














