/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file stats.c
 * @brief Implementation file for basic statistics functions.
 *
 * This file contains implementations of functions that calculate
 * the minimum, maximum, mean, and median of a data set, and sort the data.
 *
 * @author Chang Jih-Teng
 * @date May 2, 2025
 */



#include <stdio.h>
#include "stats.h"
#include "platform.h"

/* Size of the Data Set */
#define SIZE (40)

int main() {

  unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
                              114, 88,   45,  76, 123,  87,  25,  23,
                              200, 122, 150, 90,   92,  87, 177, 244,
                              201,   6,  12,  60,   8,   2,   5,  67,
                                7,  87, 250, 230,  99,   3, 100,  90};

  // Other Variable Declarations Go Here
  // Statistics and Printing Functions Go Here
  
  printf("Original array:\n");
  print_array(test, SIZE);
  printf("\n");

  printf("Statistics before sorting:\n");
  print_statistics(test, SIZE);
  printf("\n");

  sort_array(test, SIZE);

  printf("Sorted array (largest to smallest):\n");
  print_array(test, SIZE);
  printf("\n");

  printf("Statistics after sorting:\n");
  print_statistics(test, SIZE);

  return 0;
}

/* Add other Implementation File Code Here */

/* Function to print statistics */
void print_statistics(unsigned char* data, unsigned int size) {
  printf("Minimum: %u\n", find_minimum(data, size));
  printf("Maximum: %u\n", find_maximum(data, size));
  printf("Mean:    %u\n", find_mean(data, size));
  printf("Median:  %u\n", find_median(data, size));
}

/* Function to print array */
// void print_array(unsigned char* data, unsigned int size) {
//   for (unsigned int i = 0; i < size; i++) {
//     printf("Index %2u: %u\n", i, data[i]);
//   }
// }
void print_array(unsigned char *array, unsigned int length) {
#ifdef VERBOSE
  for (int i = 0; i < length; i++) {
    PRINTF("%d ", array[i]);
  }
  PRINTF("\n");
#endif
}

/* Function to find median */
unsigned char find_median(unsigned char* data, unsigned int size) {
  unsigned char temp[size];
  for (unsigned int i = 0; i < size; i++) {
    temp[i] = data[i];
  }

  for (unsigned int i = 0; i < size - 1; i++) {
    for (unsigned int j = 0; j < size - i - 1; j++) {
      if (temp[j] < temp[j + 1]) {
        unsigned char t = temp[j];
        temp[j] = temp[j + 1];
        temp[j + 1] = t;
      }
    }
  }

  if (size % 2 == 0) {
    return (temp[size/2 - 1] + temp[size/2]) / 2;
  } else {
    return temp[size/2];
  }
}

/* Function to find mean */
unsigned char find_mean(unsigned char* data, unsigned int size) {
  unsigned int sum = 0;
  for (unsigned int i = 0; i < size; i++) {
    sum += data[i];
  }
  return (unsigned char)(sum / size);
}

/* Function to find maximum */
unsigned char find_maximum(unsigned char* data, unsigned int size) {
  unsigned char max = data[0];
  for (unsigned int i = 1; i < size; i++) {
    if (data[i] > max) {
      max = data[i];
    }
  }
  return max;
}

/* Function to find minimum */
unsigned char find_minimum(unsigned char* data, unsigned int size) {
  unsigned char min = data[0];
  for (unsigned int i = 1; i < size; i++) {
    if (data[i] < min) {
      min = data[i];
    }
  }
  return min;
}

/* Function to sort array descending */
void sort_array(unsigned char* data, unsigned int size) {
  for (unsigned int i = 0; i < size - 1; i++) {
    for (unsigned int j = 0; j < size - i - 1; j++) {
      if (data[j] < data[j + 1]) {
        unsigned char temp = data[j];
        data[j] = data[j + 1];
        data[j + 1] = temp;
      }
    }
  }
}
