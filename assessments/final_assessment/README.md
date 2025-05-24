# Coursera Embedded Systems - Final Project

## Overview

This repository contains my implementation for the Final Assessment of the University of Colorado's *Introduction to Embedded Systems Software and Development Environments* course on Coursera.

The project demonstrates key concepts learned in the course, including:

* Dynamic memory allocation
* Data conversion (ASCII ↔ Integer)
* Memory manipulation (copy, move, set, zero)
* Debugging with `PRINTF`
* Use of `Makefile` for multiple build targets

## Repository Structure

```
.
├── src/              # Source files (.c)
├── include/          # Header files (.h)
├── c1final.out          # Compiled output for HOST platform
├── c1final.map          # Linker map file
├── c1final.asm          # Disassembled output from objdump
├── Makefile          # Build system
└── README.md         # This file
```

## 🧪 Functional Modules

### `main.c`
- Contains `main()` used when running on HOST.
- Calls `course1()` test function if `COURSE1` is defined.

### `course1.c`
- Contains test functions:
  - `test_data1()` / `test_data2()` – Test `my_itoa()` and `my_atoi()`
  - `test_memmove1()` ~ `test_memmove4()` – Test `my_memmove()` in different scenarios
- Uses `PRINTF` macro for debug output when `VERBOSE` is defined.

### `data.c` / `data.h`
- `my_itoa(int32_t, uint8_t*, uint32_t)` – Converts integer to ASCII string in given base.
- `my_atoi(uint8_t*, uint8_t, uint32_t)` – Converts ASCII string back to integer.

### `memory.c` / `memory.h`
- `my_memmove(uint8_t*, uint8_t*, size_t)` – Custom memory-safe move function supporting overlapping regions.
- `reserve_words(size_t)` – Dynamically allocates word-aligned memory.
- `free_words(uint32_t*)` – Frees memory allocated with `reserve_words`.

### `platform.h`
- Defines `PRINTF()` macro:
  - Maps to `printf()` on `HOST`
  - Becomes a no-op on `MSP432`

### `stats.c` *(not used)*
- Originally used in earlier assignments for statistical analysis. Ensure `main()` here is commented out or removed.

## Build Instructions

### 1. For HOST platform

To compile the project on the HOST platform:

```bash
make PLATFORM=HOST COURSE1=1
```

To compile with verbose debug output:

```bash
make PLATFORM=HOST COURSE1=1 VERBOSE=1
```

This will generate:

* `c1final.out` (final executable)
* `c1final.map` (linker map)
* `c1final.asm` (disassembly of the binary)

## Running the Program

After building, run the output binary as follows:

```bash
./c1final.out
```

This will execute `course1()` from `main.c` and run the test cases for:

* `my_itoa()`, `my_atoi()`
* `reserve_words()` / `free_words()`
* `memcpy`, `memmove`, `memset`, `memzero`

### 2. For MSP432 platform

To build the firmware for MSP432:

```bash
make PLATFORM=MSP432 COURSE1=1
```

This will:

- Compile all source files for the ARM Cortex-M4 target
- Link with `msp432p401r.lds`
- Produce the firmware: `c1final.out`
- Generate:
  - `c1final.map`: memory map
  - `c1final.asm`: disassembled code
  - `src/*.o`, `src/*.d`: intermediate files

---

## 📦 Output Files

- `c1final.out` – Final firmware binary (not executable on PC)
- `c1final.map` – Linker memory map file
- `c1final.asm` – Disassembly of output
- `src/*.o` – Object files
- `src/*.d` – Dependency files for Make

## Notes

* This submission targets the **HOST platform** for easier testing and simulation.
* To enable or disable debug print output, define or undefine `VERBOSE` during compilation.
* All memory allocations are freed appropriately using `free_words()`.
* The implementation adheres to the C99 standard and passes all test cases defined in `course1.c`.

