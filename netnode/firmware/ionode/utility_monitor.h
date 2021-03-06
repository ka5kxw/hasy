/*************************************************************
* Utility meter monitor
*
* (c) 2009, Lieven Hollevoet.
**************************************************************
* boostc compiler : v 6.81
* target device   : PIC18F2320
* clockfreq       : 32 MHz (internal oscillator)
* target hardware : NetNode
* UART speed      : 38400 bps
*************************************************************/
#ifndef _UTILMONI_H_
#define _UTILMONI_H_

// Define oscillator frequency
//#pragma CLOCK_FREQ 8000000

// Define the device ID and firmware version
#define DEVICE_ID		0x00
#define FIRMWARE_MAJOR  0x00
#define FIRMWARE_MINOR  0x00

// Define port directions 1=input
#define PortAConfig  	0xEF  //  11101111
#define PortBConfig  	0x17  //  00010111
#define PortCConfig  	0xC5  //  11000101 
 	

// Define bit variables attached to pins
#define green_led    (PORTAbits.RA4)

#define LED_ON 0
#define LED_OFF 1


// Timer values
#define TMR0_VALUE 0x85EE // For a second interrupt.
#define TMR1_VALUE 0xB1E0 // For 20 ms interrupt.

// Function declarations
void init(void);
void high_isr(void);
void low_isr(void);



#endif //_UTILMONI_H_
