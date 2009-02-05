;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME: Counter8_ltrx.asm
;;   Version: 2.5, Updated on 2008/6/23 at 12:23:15
;;  Generated by PSoC Designer ???
;;
;;  DESCRIPTION: Counter8 User Module software implementation file
;;               for the 22/24/27/29xxx PSoC family of devices
;;
;;  NOTE: User Module APIs conform to the fastcall16 convention for marshalling
;;        arguments and observe the associated "Registers are volatile" policy.
;;        This means it is the caller's responsibility to preserve any values
;;        in the X and A registers that are still needed after the API functions
;;        returns. For Large Memory Model devices it is also the caller's 
;;        responsibility to perserve any value in the CUR_PP, IDX_PP, MVR_PP and 
;;        MVW_PP registers. Even though some of these registers may not be modified
;;        now, there is no guarantee that will remain the case in future releases.
;;-----------------------------------------------------------------------------
;;  Copyright (c) Cypress MicroSystems 2000-2004. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************

include "m8c.inc"
include "memory.inc"
include "Counter8_ltrx.inc"

;-----------------------------------------------
;  Global Symbols
;-----------------------------------------------
export  Counter8_ltrx_EnableInt
export _Counter8_ltrx_EnableInt
export  Counter8_ltrx_DisableInt
export _Counter8_ltrx_DisableInt
export  Counter8_ltrx_Start
export _Counter8_ltrx_Start
export  Counter8_ltrx_Stop
export _Counter8_ltrx_Stop
export  Counter8_ltrx_WritePeriod
export _Counter8_ltrx_WritePeriod
export  Counter8_ltrx_WriteCompareValue
export _Counter8_ltrx_WriteCompareValue
export  Counter8_ltrx_bReadCompareValue
export _Counter8_ltrx_bReadCompareValue
export  Counter8_ltrx_bReadCounter
export _Counter8_ltrx_bReadCounter

; The following functions are deprecated and subject to omission in future releases
;
export  bCounter8_ltrx_ReadCompareValue  ; deprecated
export _bCounter8_ltrx_ReadCompareValue  ; deprecated
export  bCounter8_ltrx_ReadCounter       ; deprecated
export _bCounter8_ltrx_ReadCounter       ; deprecated


AREA onewire_gateway_RAM (RAM,REL)

;-----------------------------------------------
;  Constant Definitions
;-----------------------------------------------

INPUT_REG_NULL:                equ 0x00    ; Clear the input register


;-----------------------------------------------
; Variable Allocation
;-----------------------------------------------


AREA UserModules (ROM, REL)

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: Counter8_ltrx_EnableInt
;
;  DESCRIPTION:
;     Enables this counter's interrupt by setting the interrupt enable mask bit
;     associated with this User Module. This function has no effect until and
;     unless the global interrupts are enabled (for example by using the
;     macro M8C_EnableGInt).
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None.
;  RETURNS:      Nothing.
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 Counter8_ltrx_EnableInt:
_Counter8_ltrx_EnableInt:
   RAM_PROLOGUE RAM_USE_CLASS_1
   Counter8_ltrx_EnableInt_M
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: Counter8_ltrx_DisableInt
;
;  DESCRIPTION:
;     Disables this counter's interrupt by clearing the interrupt enable
;     mask bit associated with this User Module.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None
;  RETURNS:      Nothing
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 Counter8_ltrx_DisableInt:
_Counter8_ltrx_DisableInt:
   RAM_PROLOGUE RAM_USE_CLASS_1
   Counter8_ltrx_DisableInt_M
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret


.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: Counter8_ltrx_Start
;
;  DESCRIPTION:
;     Sets the start bit in the Control register of this user module.  The
;     counter will begin counting on the next input clock as soon as the
;     enable input is asserted high.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None
;  RETURNS:      Nothing
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 Counter8_ltrx_Start:
_Counter8_ltrx_Start:
   RAM_PROLOGUE RAM_USE_CLASS_1
   Counter8_ltrx_Start_M
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret


.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: Counter8_ltrx_Stop
;
;  DESCRIPTION:
;     Disables counter operation by clearing the start bit in the Control
;     register.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None
;  RETURNS:      Nothing
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 Counter8_ltrx_Stop:
_Counter8_ltrx_Stop:
   RAM_PROLOGUE RAM_USE_CLASS_1
   Counter8_ltrx_Stop_M
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret


.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: Counter8_ltrx_WritePeriod
;
;  DESCRIPTION:
;     Write the 8-bit period value into the Period register (DR1).
;-----------------------------------------------------------------------------
;
;  ARGUMENTS: fastcall16 BYTE bPeriodValue (passed in A)
;  RETURNS:   Nothing
;  SIDE EFFECTS:
;    If the counter user module is stopped, then this value will also be
;    latched into the Count register (DR0).
;     
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 Counter8_ltrx_WritePeriod:
_Counter8_ltrx_WritePeriod:
   RAM_PROLOGUE RAM_USE_CLASS_1
   mov   reg[Counter8_ltrx_PERIOD_REG], A
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret


.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: Counter8_ltrx_WriteCompareValue
;
;  DESCRIPTION:
;     Writes compare value into the Compare register (DR2).
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    fastcall16 BYTE bCompareValue (passed in A)
;  RETURNS:      Nothing
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 Counter8_ltrx_WriteCompareValue:
_Counter8_ltrx_WriteCompareValue:
   RAM_PROLOGUE RAM_USE_CLASS_1
   mov   reg[Counter8_ltrx_COMPARE_REG], A
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret


.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: Counter8_ltrx_bReadCompareValue
;
;  DESCRIPTION:
;     Reads the Compare register.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None
;  RETURNS:      fastcall16 BYTE bCompareValue (value of DR2 in the A register)
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 Counter8_ltrx_bReadCompareValue:
_Counter8_ltrx_bReadCompareValue:
 bCounter8_ltrx_ReadCompareValue:                ; this name deprecated
_bCounter8_ltrx_ReadCompareValue:                ; this name deprecated
   RAM_PROLOGUE RAM_USE_CLASS_1
   mov   A, reg[Counter8_ltrx_COMPARE_REG]
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret


.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: Counter8_ltrx_bReadCounter
;
;  DESCRIPTION:
;     Returns the value in the Count register (DR0), preserving the value in
;     the compare register (DR2). Interrupts are prevented during the transfer
;     from the Count to the Compare registers by holding the clock low in
;     the PSoC block.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS: None
;  RETURNS:   fastcall16 BYTE bCount (value of DR0 in the A register)
;  SIDE EFFECTS:
;     1) If running, the user module is stopped momentarily and one or more
;        counts may be missed.
;     2) The A and X registers may be modified by this or future implementations
;        of this function.  The same is true for all RAM page pointer registers in
;        the Large Memory Model.  When necessary, it is the calling function's
;        responsibility to perserve their values across calls to fastcall16 
;        functions.
;
 Counter8_ltrx_bReadCounter:
_Counter8_ltrx_bReadCounter:
 bCounter8_ltrx_ReadCounter:                     ; this name deprecated
_bCounter8_ltrx_ReadCounter:                     ; this name deprecated

   bOrigCompareValue:      EQU   0               ; Frame offset to temp Compare store
   bOrigControlReg:        EQU   1               ; Frame offset to temp CR0     store
   bOrigClockSetting:      EQU   2               ; Frame offset to temp Input   store
   wCounter:               EQU   3               ; Frame offset to temp Count   store
   STACK_FRAME_SIZE:       EQU   4               ; max stack frame size is 4 bytes

   RAM_PROLOGUE RAM_USE_CLASS_2
   mov   X, SP                                   ; X <- stack frame pointer
   mov   A, reg[Counter8_ltrx_COMPARE_REG]       ; Save the Compare register on the stack
   push  A                                       ;
   mov   A, reg[Counter8_ltrx_CONTROL_REG]       ; Save CR0 (running or stopped state)
   push  A                                       ;
   Counter8_ltrx_Stop_M                          ; Disable (stop) the Counter if running
   M8C_SetBank1                                  ;
   mov   A, reg[Counter8_ltrx_INPUT_REG]         ; save the clock input setting
   push  A                                       ;   on the stack (now 2 bytes) and ...
                                                 ;   hold the clock low:
   mov   reg[Counter8_ltrx_INPUT_REG], INPUT_REG_NULL
   M8C_SetBank0
                                                 ; Extract the Count via DR2 register
   mov   A, reg[Counter8_ltrx_COUNTER_REG]       ; DR2 <- DR0
   mov   A, reg[Counter8_ltrx_COMPARE_REG]       ; Stash the Count on the stack
   push  A                                       ;  -stack frame is now 3 bytes
   mov   A, [X+bOrigCompareValue]                ; Restore the Compare register
   mov   reg[Counter8_ltrx_COMPARE_REG], A
   M8C_SetBank1                                  ; Restore the counter operation:
   mov   A, [X+bOrigClockSetting]                ;   First, the clock setting...
   mov   reg[Counter8_ltrx_INPUT_REG], A         ;
   M8C_SetBank0                                  ;   then re-enable (start) the counter
   mov   A, [X+bOrigControlReg]                  ;     if it was running when
   mov   reg[Counter8_ltrx_CONTROL_REG], A       ;     this function was first called
   pop   A                                       ; Setup the return value
   ADD   SP, -(STACK_FRAME_SIZE-1)               ; Zap remainder of stack frame
   RAM_EPILOGUE RAM_USE_CLASS_2
   ret

.ENDSECTION

; End of File Counter8_ltrx.asm
