/******************************************************************************
*  Generated by PSoC Designer ???
******************************************************************************/
#include <m8c.h>
// LED1Pin address and mask defines
#pragma	ioport	LED1Pin_Data_ADDR:	0xc
BYTE			LED1Pin_Data_ADDR;
#pragma	ioport	LED1Pin_DriveMode_0_ADDR:	0x10c
BYTE			LED1Pin_DriveMode_0_ADDR;
#pragma	ioport	LED1Pin_DriveMode_1_ADDR:	0x10d
BYTE			LED1Pin_DriveMode_1_ADDR;
#pragma	ioport	LED1Pin_DriveMode_2_ADDR:	0xf
BYTE			LED1Pin_DriveMode_2_ADDR;
#pragma	ioport	LED1Pin_GlobalSelect_ADDR:	0xe
BYTE			LED1Pin_GlobalSelect_ADDR;
#pragma	ioport	LED1Pin_IntCtrl_0_ADDR:	0x10e
BYTE			LED1Pin_IntCtrl_0_ADDR;
#pragma	ioport	LED1Pin_IntCtrl_1_ADDR:	0x10f
BYTE			LED1Pin_IntCtrl_1_ADDR;
#pragma	ioport	LED1Pin_IntEn_ADDR:	0xd
BYTE			LED1Pin_IntEn_ADDR;
#define LED1Pin_MASK 0x80
// LED1Pin Shadow defines
//   LED1Pin_DataShadow define
extern BYTE Port_3_Data_SHADE;
#define LED1Pin_DataShadow (*(unsigned char*)&Port_3_Data_SHADE)
