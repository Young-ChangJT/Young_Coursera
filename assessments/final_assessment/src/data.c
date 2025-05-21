#include "data.h"

uint8_t my_itoa(int32_t data, uint8_t * ptr, uint32_t base) {
    uint8_t * start = ptr;
    uint8_t is_negative = 0;

    if (data == 0) {
        *ptr++ = '0';
        *ptr = '\0';
        return 2;
    }

    if (data < 0) {
        is_negative = 1;
        data = -data;
    }

    while (data > 0) {
        uint8_t digit = data % base;
        if (digit < 10) {
            *ptr++ = digit + '0';
        } else {
            *ptr++ = digit - 10 + 'A';
        }
        data /= base;
    }

    if (is_negative) {
        *ptr++ = '-';
    }

    *ptr = '\0';

    // Reverse the string
    uint8_t * original_start = start;
    uint8_t * end = ptr - 1;
    while (start < end) {
        uint8_t temp = *start;
        *start = *end;
        *end = temp;
        start++;
        end--;
    }

    return (ptr - original_start);
}

int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base) {
    int32_t result = 0;
    uint8_t is_negative = 0;

    if (*ptr == '-') {
        is_negative = 1;
        ptr++;
        digits--;
    }

    while (digits--) {
        uint8_t digit = *ptr++;
        if (digit >= '0' && digit <= '9') {
            digit -= '0';
        } else if (digit >= 'A' && digit <= 'F') {
            digit -= 'A' - 10;
        } else if (digit >= 'a' && digit <= 'f') {
            digit -= 'a' - 10;
        }
        result = result * base + digit;
    }

    if (is_negative) {
        result = -result;
    }

    return result;
}
