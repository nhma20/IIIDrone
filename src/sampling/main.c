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
//#include "xgpio.h"

#define DEBUG

#define BRAM(A)     ((volatile u32*)px_config->MemBaseAddress)[A]
#define BRAM_FP(A)  ((volatile float*)px_config->MemBaseAddress)[A]

typedef struct mmWaveReading {
	float	x;
	float	y;
	float	z;
} XmmWaveReading;

typedef struct magReading {
	uint16_t	ch0_x;
	uint16_t	ch0_y;
	uint16_t	ch0_z;

	uint16_t	ch1_x;
	uint16_t	ch1_y;
	uint16_t	ch1_z;

	uint16_t	ch2_x;
	uint16_t	ch2_y;
	uint16_t	ch2_z;

	uint16_t	ch3_x;
	uint16_t	ch3_y;
	uint16_t	ch3_z;
} XMagReading;

typedef struct dataReading {
	XmmWaveReading	mmWave[8];
	XMagReading		mag;
} XDataReading;

//XGpio 				x_gpio;

XBram             	x_bram;
XBram_Config    	*px_config;

uint8_t 		ucAXIInit();

XDataReading	XGetReading();

int main()
{
    init_platform();

	ucAXIInit();

	uint16_t 		pus_mag_readings[12];
	float			pf_mmw_readings[24];

	//XmmWaveReading	px_mmWave_readings[8];

//XDataReading	px_data_readings[1000];

    while(1)
    {
    	/**********************************************************************************************************/
		// Sampling:
//    	for (int i = 0; i < 1000; i++)
//    	{
//    		uint32_t	ul_gpio_read		=	XGpio_DiscreteRead(&x_gpio, 1);
//    		uint32_t	ul_gpio_last_read	=	XGpio_DiscreteRead(&x_gpio, 1);
//
//    		while(1)
//    		{
//    			// Check for rising edge on 1 kHz GPIO clock
//    			if ((ul_gpio_read & 0x00000001) && ~(ul_gpio_last_read & 0x00000001))
//    				break;
//
//    			ul_gpio_last_read			=	ul_gpio_read;
//    			ul_gpio_read				=	XGpio_DiscreteRead(&x_gpio, 1);
//    		}
//
//    		px_data_readings[i]		=	XGetReading();
//    	}

    	pus_mag_readings[0]				=	BRAM(0);
    	pus_mag_readings[1]			=	BRAM(1);
    	pus_mag_readings[2]	=	BRAM(2);

    	pus_mag_readings[3]	=	BRAM(3);
    	pus_mag_readings[4]	=	BRAM(4);
    	pus_mag_readings[5]	=	BRAM(5);

    	pus_mag_readings[6]	=	BRAM(6);
    	pus_mag_readings[7]	=	BRAM(7);
    	pus_mag_readings[8]	=	BRAM(8);

    	pus_mag_readings[9]	=	BRAM(9);
    	pus_mag_readings[10]	=	BRAM(10);
    	pus_mag_readings[11]	=	BRAM(11);




		xil_printf("%u\t%u\t%u\t\t%u\t%u\t%u\t\t%u\t%u\t%u\t\t%u\t%u\t%u\t\t",
				pus_mag_readings[0], pus_mag_readings[1], pus_mag_readings[2],
				pus_mag_readings[3], pus_mag_readings[4], pus_mag_readings[5],
				pus_mag_readings[6], pus_mag_readings[7], pus_mag_readings[8],
				pus_mag_readings[9], pus_mag_readings[10], pus_mag_readings[11]
		);

		char buffer[1000];

		pf_mmw_readings[0] = FP_BRAM(12);
		pf_mmw_readings[1] = FP_BRAM(13);
		pf_mmw_readings[2] = FP_BRAM(14);

		pf_mmw_readings[3] = FP_BRAM(15);
		pf_mmw_readings[4] = FP_BRAM(16);
		pf_mmw_readings[5] = FP_BRAM(17);

		pf_mmw_readings[6] = FP_BRAM(18);
		pf_mmw_readings[7] = FP_BRAM(19);
		pf_mmw_readings[8] = FP_BRAM(20);

		pf_mmw_readings[9] = FP_BRAM(21);
		pf_mmw_readings[10] = FP_BRAM(22);
		pf_mmw_readings[11] = FP_BRAM(23);

		pf_mmw_readings[12] = FP_BRAM(24);
		pf_mmw_readings[13] = FP_BRAM(25);
		pf_mmw_readings[14] = FP_BRAM(26);

		pf_mmw_readings[15] = FP_BRAM(27);
		pf_mmw_readings[16] = FP_BRAM(28);
		pf_mmw_readings[17] = FP_BRAM(29);

		pf_mmw_readings[18] = FP_BRAM(30);
		pf_mmw_readings[19] = FP_BRAM(31);
		pf_mmw_readings[20] = FP_BRAM(32);

		pf_mmw_readings[21] = FP_BRAM(33);
		pf_mmw_readings[22] = FP_BRAM(34);
		pf_mmw_readings[23] = FP_BRAM(35);

		sprintf(buffer, "%f\t%f\t%f\t\t%f\t%f\t%f\t\t%f\t%f\t%f\t\t%f\t%f\t%f\t\t%f\t%f\t%f\n\r",
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

    	/**********************************************************************************************************/
    	// Transmitting:

//    	for (int i = 0; i < 1000; i++)
//    	{
//    		XDataReading	data	=	px_data_readings[i];
//
//    		char buffer[1000];
//
//    		sprintf(buffer, "%u\t%u\t%u\t%u\t%u\t%u\t%u\t%u\t%u\t%u\t%u\t%u\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\t%f\n",
//    				data.mag.ch0_x, data.mag.ch0_y, data.mag.ch0_z,
//					data.mag.ch1_x, data.mag.ch1_y, data.mag.ch1_z,
//					data.mag.ch2_x, data.mag.ch2_y, data.mag.ch2_z,
//					data.mag.ch3_x, data.mag.ch3_y, data.mag.ch3_z,
//					data.mmWave.)
//    	}

    }

#ifdef DEBUG
    print("Hello World\n\r");
    print("Successfully ran Hello World application");
#endif
    cleanup_platform();
    return 0;
}

uint8_t 	ucAXIInit()
{
	// GPIO Initialization
//#ifdef DEBUG
//	xil_printf("Initializing GPIO...\n\r");
//#endif
//	int x_status 	= 	XGpio_Initialize(&x_gpio, XPAR_GPIO_0_DEVICE_ID);
//
//	if (x_status != XST_SUCCESS)
//	{
//		return 0;
//	}
//
//	XGpio_SetDataDirection(&x_gpio, 1, 0xFFFFFFFF);
//
//#ifdef DEBUG
//	xil_printf("Done.\r\n");
//#endif

	// BRAM initialization
#ifdef DEBUG
	xil_printf("Initializing BRAM...\n\r");
#endif

	px_config = XBram_LookupConfig(XPAR_BRAM_0_DEVICE_ID);
	if (px_config == (XBram_Config *) NULL) {
		return XST_FAILURE;
	}

	int x_status 	= 	XBram_CfgInitialize(&x_bram, px_config,
			px_config->CtrlBaseAddress);

	if (x_status != XST_SUCCESS) {
		return 0;
	}

#ifdef DEBUG
	xil_printf("Done.\r\n");
#endif

//	// I2C initialization
//	xil_printf("Initializing I2C...\n\r");
//
//	px_iic_config	=	XIic_LookupConfig(XPAR_PS7_I2C_0_DEVICE_ID);
//	int status		=	XIic_CfgInitialize(&x_iic, px_iic_config, px_iic_config->BaseAddress);
//
//	if (status != XST_SUCCESS)
//	{
//		xil_printf("Error in configuring I2C\n\r");
//		return 0;
//	}
//
//	xil_printf("Successfully configured I2C\n\r");

	return 1;
}

XDataReading	XGetReading()
{
	XDataReading	data;

	for (int i = 0; i < 8; i++)
	{
		float x					=	BRAM_FP(16+i*3);
		float y					=	BRAM_FP(16+i*3+1);
		float z					=	BRAM_FP(16+i*3+2);

		XmmWaveReading 	x_mmw;
		x_mmw.x 				=	x;
		x_mmw.y					=	y;
		x_mmw.z					=	z;

		data.mmWave[i]			=	x_mmw;
	}

	XMagReading		x_mag;
	x_mag.ch0_x				=	BRAM(0);
	x_mag.ch0_y				=	BRAM(1);
	x_mag.ch0_z				=	BRAM(2);

	x_mag.ch1_x				=	BRAM(4);
	x_mag.ch1_y				=	BRAM(5);
	x_mag.ch1_z				=	BRAM(6);

	x_mag.ch2_x				=	BRAM(8);
	x_mag.ch2_y				=	BRAM(9);
	x_mag.ch2_z				=	BRAM(10);

	x_mag.ch3_x				=	BRAM(11);
	x_mag.ch3_y				=	BRAM(12);
	x_mag.ch3_z				=	BRAM(13);

	data.mag				=	x_mag;

	return data;
}












