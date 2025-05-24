# Coursera Embedded Systems - Final Assessment

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

## Build Instructions

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

## Notes

* This submission targets the **HOST platform** for easier testing and simulation.
* To enable or disable debug print output, define or undefine `VERBOSE` during compilation.
* All memory allocations are freed appropriately using `free_words()`.
* The implementation adheres to the C99 standard and passes all test cases defined in `course1.c`.

## Submission

Please ensure that your `.zip` file includes:

* All source code (`src/`, `include/`)
* Your `.git/` folder (if submitting the repo)
* This `README.md`
* The compiled output (`c1final.out`, `c1final.map`, `c1final.asm`)
* `Makefile`

Example compression command:

```bash
zip -r Course1-YourName.zip .
```

Replace `YourName` with your actual name (no `< >` brackets).
