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
 * @file stats.h
 * @brief Header file for statistics functions.
 *
 * This file contains declarations of functions to compute minimum,
 * maximum, mean, median, and sorting of a data set, as well as utilities
 * to print the data and statistics.
 *
 * @author Chang Jih-Teng
 * @date May 2, 2025
 */
#ifndef __STATS_H__
#define __STATS_H__

/* Add Your Declarations and Function Comments here */ 

/**
 * @brief Prints the statistics of the array (min, max, mean, median)
 *
 * @param data Pointer to the array
 * @param size Number of elements in the array
 */
void print_statistics(unsigned char* data, unsigned int size);

/**
 * @brief Prints all elements in the array
 *
 * @param data Pointer to the array
 * @param size Number of elements in the array
 */
// void print_array(unsigned char* data, unsigned int size);
void print_array(unsigned char *array, unsigned int length);

/**
 * @brief Finds the median value in the array
 *
 * @param data Pointer to the array
 * @param size Number of elements in the array
 * @return The median value
 */
unsigned char find_median(unsigned char* data, unsigned int size);

/**
 * @brief Calculates the mean of the array
 *
 * @param data Pointer to the array
 * @param size Number of elements in the array
 * @return The mean value
 */
unsigned char find_mean(unsigned char* data, unsigned int size);

/**
 * @brief Finds the maximum value in the array
 *
 * @param data Pointer to the array
 * @param size Number of elements in the array
 * @return The maximum value
 */
unsigned char find_maximum(unsigned char* data, unsigned int size);

/**
 * @brief Finds the minimum value in the array
 *
 * @param data Pointer to the array
 * @param size Number of elements in the array
 * @return The minimum value
 */
unsigned char find_minimum(unsigned char* data, unsigned int size);

/**
 * @brief Sorts the array from largest to smallest
 *
 * @param data Pointer to the array
 * @param size Number of elements in the array
 */
void sort_array(unsigned char* data, unsigned int size);

#endif /* __STATS_H__ */
