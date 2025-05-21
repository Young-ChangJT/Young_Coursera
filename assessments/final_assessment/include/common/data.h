#ifndef __DATA_H__
#define __DATA_H__

#include <stdint.h>

/**
 * @brief Convert integer to ASCII string
 *
 * This function converts a signed 32-bit integer into a string
 * representation based on the specified base (2 to 16).
 *
 * @param data The integer to convert
 * @param ptr Pointer to memory where the resulting ASCII string will be stored
 * @param base Base to convert to (e.g., 2, 10, 16)
 *
 * @return Length of the resulting ASCII string (including null terminator)
 */
uint8_t my_itoa(int32_t data, uint8_t * ptr, uint32_t base);

/**
 * @brief Convert ASCII string to integer
 *
 * This function converts a string representing a number in a given base
 * into its 32-bit signed integer value.
 *
 * @param ptr Pointer to ASCII string
 * @param digits Number of digits in the ASCII string
 * @param base Base of the number in the ASCII string
 *
 * @return Signed 32-bit integer result
 */
int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base);

#endif /* __DATA_H__ */
