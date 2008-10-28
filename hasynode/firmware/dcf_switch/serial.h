/*************************************************************
* Blocking serial interface code for the hardware UART
* of PIC16-range microcontrollers from Microchip
*
* (c) 2006, Lieven Hollevoet
*     http://electronics.lika.be
*
* Toolsuite: Boostc compiler
* 
* License  : http://license.lika.be
*           Based on code from Yann Hendrikx.
*************************************************************/

#ifndef _SERIAL_H_
#define _SERIAL_H_

#include <system.h>

// Function declarations
void serial_init(char brg);

void serial_printf(char value);
void serial_printf(const char* text);
void serial_print_lf();
void serial_print_hex(char number);
void serial_print_hex(short number);
void serial_print_dec(char number);
void serial_print_dec(short number);
void serial_print_dec(char number, char positions);
void serial_print_bin(char number);

char serial_getch();
char serial_get_decimal();

// Macros for simple functions (to reduce stack usage)
#define serial_peek()       (pir1 & 1 << RCIF)
#define serial_print_lf() 	serial_printf(0x0a); serial_printf(0x0d)

#endif // _SERIAL_H_


