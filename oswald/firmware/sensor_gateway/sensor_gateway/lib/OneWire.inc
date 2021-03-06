;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME: OneWire.inc
;;  Version: 1.1, Updated on 2009/10/15 at 17:11:37
;;  Generated by PSoC Designer 5.0.1127.0
;;
;;  DESCRIPTION: Assembler declarations for the OneWire user module interface
;;-----------------------------------------------------------------------------
;;  Copyright (c) Cypress Semiconductor 2009. All Rights Reserved.
;;*****************************************************************************

;;*****************************************************************************

;--------------------------------
;  Interrupt registers and masks
;--------------------------------
OneWire_BIT_INT_MASK:                   equ 0x40
OneWire_BIT_INT_REG:                    equ 0x0df

IF (OneWire_BIT_INT_REG - INT_MSK1)
OneWire_BIT_INT_CLR:                    equ INT_CLR2
ELSE
OneWire_BIT_INT_CLR:                    equ INT_CLR1
ENDIF

;---------------------------
; One Wire constants and masks
;---------------------------
OneWire_CRC16_ENABLE:                   equ   0
OneWire_SEARCH_ENABLE:                  equ   1
OneWire_OVERDRIVE_ENABLE:               equ   0
OneWire_PARASITE_ENABLE:                equ   0

IF (OneWire_PARASITE_ENABLE)
;--------------------------------
;  Parasite Power Pin selected
;--------------------------------
OneWire_OUT_PORT_DM1:                   equ PRT0DM1
OneWire_OUT_PORT_MASK:                  equ 0x1
ENDIF

;-----------------------------------------------
;  Registers used by OneWire
;-----------------------------------------------
OneWire_BITCLK_FUNC_REG:    equ 54h              ;Function register
OneWire_BITCLK_INPUT_REG:   equ 55h              ;Input register
OneWire_BITCLK_OUTPUT_REG:  equ 56h              ;Output register
OneWire_BITCLK_CONTROL_REG: equ 57h              ;Control register
OneWire_BITCLK_COUNTER_REG: equ 54h              ;Counter register
OneWire_BITCLK_PERIOD_REG:  equ 55h              ;Period register
OneWire_BITCLK_COMPARE_REG: equ 56h              ;Compare register
OneWire_XCVR_FUNC_REG:  equ 58h                  ;Function register
OneWire_XCVR_INPUT_REG: equ 59h                  ;Input register
OneWire_XCVR_OUTPUT_REG:    equ 5ah              ;Output register
OneWire_XCVR_CONTROL_REG:   equ 5bh              ;Control register
OneWire_XCVR_SHIFT_REG: equ 58h                  ;Counter register
OneWire_XCVR_TX_BUFFER_REG: equ 59h              ;Period register
OneWire_XCVR_RX_BUFFER_REG: equ 5ah              ;Compare register
