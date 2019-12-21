#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

/**
 * Add two signed integer
 *
 * On a 64-bit system, arguments are 32 bit and return is 64 bit.
 */
long long add_numbers(int x, int y);

/**
 * Simple write in console
 */
void hello_world(void);

/**
 * Take a zero-terminated C String and return its length as a
 * machine-size integer.
 */
unsigned long string_length(const char *sz_msg);
