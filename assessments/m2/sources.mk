# sources.mk

# Common sources for both HOST and MSP432
COMMON_SRCS = \
    src/main.c \
    src/memory.c

# HOST-only sources
HOST_SRCS = $(COMMON_SRCS)

# MSP432-only sources
MSP432_SRCS = $(COMMON_SRCS) \
    src/interrupts_msp432p401r_gcc.c \
    src/startup_msp432p401r_gcc.c \
    src/system_msp432p401r.c

