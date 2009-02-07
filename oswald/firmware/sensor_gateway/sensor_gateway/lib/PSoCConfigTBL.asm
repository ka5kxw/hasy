; Generated by PSoC Designer ???
;
include "m8c.inc"
;  Personalization tables 
export LoadConfigTBL_sensor_gateway_Bank1
export LoadConfigTBL_sensor_gateway_Bank0
export LoadConfigTBL_sensor_gateway_Ordered
AREA lit(rom, rel)
LoadConfigTBL_sensor_gateway_Ordered:
;  Ordered Global Register values
	M8C_SetBank1
	mov	reg[00h], 06h		; Port_0_DriveMode_0 register (PRT0DM0)
	mov	reg[01h], fbh		; Port_0_DriveMode_1 register (PRT0DM1)
	M8C_SetBank0
	mov	reg[03h], f8h		; Port_0_DriveMode_2 register (PRT0DM2)
	mov	reg[02h], 05h		; Port_0_GlobalSelect register (PRT0GS)
	M8C_SetBank1
	mov	reg[02h], 00h		; Port_0_IntCtrl_0 register (PRT0IC0)
	mov	reg[03h], 00h		; Port_0_IntCtrl_1 register (PRT0IC1)
	M8C_SetBank0
	mov	reg[01h], 00h		; Port_0_IntEn register (PRT0IE)
	M8C_SetBank1
	mov	reg[04h], 40h		; Port_1_DriveMode_0 register (PRT1DM0)
	mov	reg[05h], bfh		; Port_1_DriveMode_1 register (PRT1DM1)
	M8C_SetBank0
	mov	reg[07h], bbh		; Port_1_DriveMode_2 register (PRT1DM2)
	mov	reg[06h], 44h		; Port_1_GlobalSelect register (PRT1GS)
	M8C_SetBank1
	mov	reg[06h], 00h		; Port_1_IntCtrl_0 register (PRT1IC0)
	mov	reg[07h], 00h		; Port_1_IntCtrl_1 register (PRT1IC1)
	M8C_SetBank0
	mov	reg[05h], 00h		; Port_1_IntEn register (PRT1IE)
	M8C_SetBank1
	mov	reg[08h], 40h		; Port_2_DriveMode_0 register (PRT2DM0)
	mov	reg[09h], bfh		; Port_2_DriveMode_1 register (PRT2DM1)
	M8C_SetBank0
	mov	reg[0bh], ffh		; Port_2_DriveMode_2 register (PRT2DM2)
	mov	reg[0ah], 00h		; Port_2_GlobalSelect register (PRT2GS)
	M8C_SetBank1
	mov	reg[0ah], 00h		; Port_2_IntCtrl_0 register (PRT2IC0)
	mov	reg[0bh], 00h		; Port_2_IntCtrl_1 register (PRT2IC1)
	M8C_SetBank0
	mov	reg[09h], 00h		; Port_2_IntEn register (PRT2IE)
	M8C_SetBank1
	mov	reg[0ch], 80h		; Port_3_DriveMode_0 register (PRT3DM0)
	mov	reg[0dh], 7fh		; Port_3_DriveMode_1 register (PRT3DM1)
	M8C_SetBank0
	mov	reg[0fh], 7fh		; Port_3_DriveMode_2 register (PRT3DM2)
	mov	reg[0eh], 00h		; Port_3_GlobalSelect register (PRT3GS)
	M8C_SetBank1
	mov	reg[0eh], 00h		; Port_3_IntCtrl_0 register (PRT3IC0)
	mov	reg[0fh], 00h		; Port_3_IntCtrl_1 register (PRT3IC1)
	M8C_SetBank0
	mov	reg[0dh], 00h		; Port_3_IntEn register (PRT3IE)
	M8C_SetBank1
	mov	reg[10h], 05h		; Port_4_DriveMode_0 register (PRT4DM0)
	mov	reg[11h], fbh		; Port_4_DriveMode_1 register (PRT4DM1)
	M8C_SetBank0
	mov	reg[13h], ffh		; Port_4_DriveMode_2 register (PRT4DM2)
	mov	reg[12h], 00h		; Port_4_GlobalSelect register (PRT4GS)
	M8C_SetBank1
	mov	reg[12h], 00h		; Port_4_IntCtrl_0 register (PRT4IC0)
	mov	reg[13h], 00h		; Port_4_IntCtrl_1 register (PRT4IC1)
	M8C_SetBank0
	mov	reg[11h], 00h		; Port_4_IntEn register (PRT4IE)
	M8C_SetBank1
	mov	reg[14h], 00h		; Port_5_DriveMode_0 register (PRT5DM0)
	mov	reg[15h], 00h		; Port_5_DriveMode_1 register (PRT5DM1)
	M8C_SetBank0
	mov	reg[17h], 00h		; Port_5_DriveMode_2 register (PRT5DM2)
	mov	reg[16h], 00h		; Port_5_GlobalSelect register (PRT5GS)
	M8C_SetBank1
	mov	reg[16h], 00h		; Port_5_IntCtrl_0 register (PRT5IC0)
	mov	reg[17h], 00h		; Port_5_IntCtrl_1 register (PRT5IC1)
	M8C_SetBank0
	mov	reg[15h], 00h		; Port_5_IntEn register (PRT5IE)
	M8C_SetBank1
	mov	reg[18h], 00h		; Port_6_DriveMode_0 register (PRT6DM0)
	mov	reg[19h], 00h		; Port_6_DriveMode_1 register (PRT6DM1)
	M8C_SetBank0
	mov	reg[1bh], 00h		; Port_6_DriveMode_2 register (PRT6DM2)
	mov	reg[1ah], 00h		; Port_6_GlobalSelect register (PRT6GS)
	M8C_SetBank1
	mov	reg[1ah], 00h		; Port_6_IntCtrl_0 register (PRT6IC0)
	mov	reg[1bh], 00h		; Port_6_IntCtrl_1 register (PRT6IC1)
	M8C_SetBank0
	mov	reg[19h], 00h		; Port_6_IntEn register (PRT6IE)
	M8C_SetBank1
	mov	reg[1ch], 00h		; Port_7_DriveMode_0 register (PRT7DM0)
	mov	reg[1dh], 00h		; Port_7_DriveMode_1 register (PRT7DM1)
	M8C_SetBank0
	mov	reg[1fh], 00h		; Port_7_DriveMode_2 register (PRT7DM2)
	mov	reg[1eh], 00h		; Port_7_GlobalSelect register (PRT7GS)
	M8C_SetBank1
	mov	reg[1eh], 00h		; Port_7_IntCtrl_0 register (PRT7IC0)
	mov	reg[1fh], 00h		; Port_7_IntCtrl_1 register (PRT7IC1)
	M8C_SetBank0
	mov	reg[1dh], 00h		; Port_7_IntEn register (PRT7IE)
	ret
LoadConfigTBL_sensor_gateway_Bank0:
;  Global Register values
	db		60h, 28h		; AnalogColumnInputSelect register (AMX_IN)
	db		66h, 00h		; AnalogComparatorControl1 register (CMP_CR1)
	db		63h, 05h		; AnalogReferenceControl register (ARF_CR)
	db		65h, 00h		; AnalogSyncControl register (ASY_CR)
	db		e6h, 00h		; DecimatorControl_0 register (DEC_CR0)
	db		e7h, 00h		; DecimatorControl_1 register (DEC_CR1)
	db		d6h, 00h		; I2CConfig register (I2CCFG)
	db		b0h, 01h		; Row_0_InputMux register (RDI0RI)
	db		b1h, 00h		; Row_0_InputSync register (RDI0SYN)
	db		b2h, 00h		; Row_0_LogicInputAMux register (RDI0IS)
	db		b3h, 33h		; Row_0_LogicSelect_0 register (RDI0LT0)
	db		b4h, 33h		; Row_0_LogicSelect_1 register (RDI0LT1)
	db		b5h, 00h		; Row_0_OutputDrive_0 register (RDI0SRO0)
	db		b6h, 00h		; Row_0_OutputDrive_1 register (RDI0SRO1)
	db		b8h, 65h		; Row_1_InputMux register (RDI1RI)
	db		b9h, 00h		; Row_1_InputSync register (RDI1SYN)
	db		bah, 10h		; Row_1_LogicInputAMux register (RDI1IS)
	db		bbh, 33h		; Row_1_LogicSelect_0 register (RDI1LT0)
	db		bch, 33h		; Row_1_LogicSelect_1 register (RDI1LT1)
	db		bdh, 00h		; Row_1_OutputDrive_0 register (RDI1SRO0)
	db		beh, 08h		; Row_1_OutputDrive_1 register (RDI1SRO1)
	db		c0h, 00h		; Row_2_InputMux register (RDI2RI)
	db		c1h, 00h		; Row_2_InputSync register (RDI2SYN)
	db		c2h, 20h		; Row_2_LogicInputAMux register (RDI2IS)
	db		c3h, 33h		; Row_2_LogicSelect_0 register (RDI2LT0)
	db		c4h, 33h		; Row_2_LogicSelect_1 register (RDI3LT1)
	db		c5h, 00h		; Row_2_OutputDrive_0 register (RDI2SRO0)
	db		c6h, 00h		; Row_2_OutputDrive_1 register (RDI2SRO1)
	db		c8h, 54h		; Row_3_InputMux register (RDI3RI)
	db		c9h, 00h		; Row_3_InputSync register (RDI3SYN)
	db		cah, 30h		; Row_3_LogicInputAMux register (RDI3IS)
	db		cbh, 33h		; Row_3_LogicSelect_0 register (RDI3LT0)
	db		cch, 33h		; Row_3_LogicSelect_1 register (RDI3LT1)
	db		cdh, 00h		; Row_3_OutputDrive_0 register (RDI3SRO0)
	db		ceh, 01h		; Row_3_OutputDrive_1 register (RDI3SRO1)
	db		6ch, 00h		; TMP_DR0 register (TMP_DR0)
	db		6dh, 00h		; TMP_DR1 register (TMP_DR1)
	db		6eh, 00h		; TMP_DR2 register (TMP_DR2)
	db		6fh, 00h		; TMP_DR3 register (TMP_DR3)
;  Instance name Counter8_ltrx, User Module Counter8
;       Instance name Counter8_ltrx, Block Name CNTR8(DBB10)
	db		33h, 00h		;Counter8_ltrx_CONTROL_REG(DBB10CR0)
	db		31h, 27h		;Counter8_ltrx_PERIOD_REG(DBB10DR1)
	db		32h, 13h		;Counter8_ltrx_COMPARE_REG(DBB10DR2)
;  Instance name LED1, User Module LED
;  Instance name LTRX, User Module UART
;       Instance name LTRX, Block Name RX(DCB13)
	db		3fh, 00h		;LTRX_RX_CONTROL_REG(DCB13CR0)
	db		3dh, 00h		;LTRX_(DCB13DR1)
	db		3eh, 00h		;LTRX_RX_BUFFER_REG (DCB13DR2)
;       Instance name LTRX, Block Name TX(DCB12)
	db		3bh, 00h		;LTRX_TX_CONTROL_REG(DCB12CR0)
	db		39h, 00h		;LTRX_TX_BUFFER_REG (DCB12DR1)
	db		3ah, 00h		;LTRX_(DCB12DR2)
;  Instance name OneWire, User Module OneWire
;       Instance name OneWire, Block Name BitClk(DBB31)
	db		57h, 00h		;OneWire_BITCLK_CONTROL_REG(DBB31CR0)
	db		55h, 00h		;OneWire_BITCLK_PERIOD_REG (DBB31DR1)
	db		56h, 00h		;OneWire_BITCLK_COMPARE_REG(DBB31DR2)
;       Instance name OneWire, Block Name XCVR(DCB32)
	db		5bh, 00h		;OneWire_XCVR_CONTROL_REG(DCB32CR0)
	db		59h, 00h		;OneWire_XCVR_TX_BUFFER_REG(DCB32DR1)
	db		5ah, 00h		;OneWire_XCVR_RX_BUFFER_REG(DCB32DR2)
;  Instance name Ticker, User Module Counter16
;       Instance name Ticker, Block Name CNTR16_LSB(DCB22)
	db		4bh, 00h		;Ticker_CONTROL_LSB_REG(DCB22CR0)
	db		49h, ffh		;Ticker_PERIOD_LSB_REG(DCB22DR1)
	db		4ah, 01h		;Ticker_COMPARE_LSB_REG(DCB22DR2)
;       Instance name Ticker, Block Name CNTR16_MSB(DCB23)
	db		4fh, 00h		;Ticker_CONTROL_MSB_REG(DCB23CR0)
	db		4dh, ffh		;Ticker_PERIOD_MSB_REG(DCB23DR1)
	db		4eh, 00h		;Ticker_COMPARE_MSB_REG(DCB23DR2)
	db		ffh
LoadConfigTBL_sensor_gateway_Bank1:
;  Global Register values
	db		61h, 00h		; AnalogClockSelect1 register (CLK_CR1)
	db		69h, 00h		; AnalogClockSelect2 register (CLK_CR2)
	db		60h, 00h		; AnalogColumnClockSelect register (CLK_CR0)
	db		62h, 00h		; AnalogIOControl_0 register (ABF_CR0)
	db		67h, 33h		; AnalogLUTControl0 register (ALT_CR0)
	db		68h, 33h		; AnalogLUTControl1 register (ALT_CR1)
	db		63h, 00h		; AnalogModulatorControl_0 register (AMD_CR0)
	db		66h, 00h		; AnalogModulatorControl_1 register (AMD_CR1)
	db		d1h, 00h		; GlobalDigitalInterconnect_Drive_Even_Input register (GDI_E_IN)
	db		d3h, 00h		; GlobalDigitalInterconnect_Drive_Even_Output register (GDI_E_OU)
	db		d0h, 00h		; GlobalDigitalInterconnect_Drive_Odd_Input register (GDI_O_IN)
	db		d2h, 00h		; GlobalDigitalInterconnect_Drive_Odd_Output register (GDI_O_OU)
	db		e1h, 30h		; OscillatorControl_1 register (OSC_CR1)
	db		e2h, 00h		; OscillatorControl_2 register (OSC_CR2)
	db		dfh, 02h		; OscillatorControl_3 register (OSC_CR3)
	db		deh, 01h		; OscillatorControl_4 register (OSC_CR4)
	db		ddh, 00h		; OscillatorGlobalBusEnableControl register (OSC_GO_EN)
	db		e7h, 00h		; Type2Decimator_Control register (DEC_CR2)
;  Instance name Counter8_ltrx, User Module Counter8
;       Instance name Counter8_ltrx, Block Name CNTR8(DBB10)
	db		30h, 61h		;Counter8_ltrx_FUNC_REG(DBB10FN)
	db		31h, 15h		;Counter8_ltrx_INPUT_REG(DBB10IN)
	db		32h, 40h		;Counter8_ltrx_OUTPUT_REG(DBB10OU)
;  Instance name LED1, User Module LED
;  Instance name LTRX, User Module UART
;       Instance name LTRX, Block Name RX(DCB13)
	db		3ch, 05h		;LTRX_RX_FUNC_REG   (DCB13FN)
	db		3dh, e2h		;LTRX_RX_INPUT_REG  (DCB13IN)
	db		3eh, 40h		;LTRX_RX_OUTPUT_REG (DCB13OU)
;       Instance name LTRX, Block Name TX(DCB12)
	db		38h, 1dh		;LTRX_TX_FUNC_REG   (DCB12FN)
	db		39h, 02h		;LTRX_TX_INPUT_REG  (DCB12IN)
	db		3ah, 46h		;LTRX_TX_OUTPUT_REG (DCB12OU)
;  Instance name OneWire, User Module OneWire
;       Instance name OneWire, Block Name BitClk(DBB31)
	db		54h, 21h		;OneWire_BITCLK_FUNC_REG(DBB31FN)
	db		55h, 11h		;OneWire_BITCLK_INPUT_REG(DBB31IN)
	db		56h, 40h		;OneWire_BITCLK_OUTPUT_REG(DBB31OU)
;       Instance name OneWire, Block Name XCVR(DCB32)
	db		58h, 16h		;OneWire_XCVR_FUNC_REG(DCB32FN)
	db		59h, c3h		;OneWire_XCVR_INPUT_REG(DCB32IN)
	db		5ah, 46h		;OneWire_XCVR_OUTPUT_REG(DCB32OU)
;  Instance name Ticker, User Module Counter16
;       Instance name Ticker, Block Name CNTR16_LSB(DCB22)
	db		48h, 01h		;Ticker_FUNC_LSB_REG(DCB22FN)
	db		49h, 17h		;Ticker_INPUT_LSB_REG(DCB22IN)
	db		4ah, 40h		;Ticker_OUTPUT_LSB_REG(DCB22OU)
;       Instance name Ticker, Block Name CNTR16_MSB(DCB23)
	db		4ch, 21h		;Ticker_FUNC_MSB_REG(DCB23FN)
	db		4dh, 37h		;Ticker_INPUT_MSB_REG(DCB23IN)
	db		4eh, 40h		;Ticker_OUTPUT_MSB_REG(DCB23OU)
	db		ffh


; PSoC Configuration file trailer PsocConfig.asm
