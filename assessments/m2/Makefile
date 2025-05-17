# --- 基本變數 ---
TARGET = c1m2.out
MAPFILE = c1m2.map

# 來源檔案（根據平台指定）
ifeq ($(PLATFORM),HOST)
    CC = gcc
    CFLAGS = -Wall -Werror -g -O0 -std=c99 -DHOST
    LDFLAGS =
    INCLUDES = -Iinclude/common
    SOURCES = src/main.c src/memory.c
else ifeq ($(PLATFORM),MSP432)
    CC = arm-none-eabi-gcc
    CFLAGS = -Wall -Werror -g -O0 -std=c99 -DMSP432 -mcpu=cortex-m4 -mthumb -march=armv7e-m \
             -mfloat-abi=hard -mfpu=fpv4-sp-d16 --specs=nosys.specs
    LDFLAGS = -T msp432p401r.lds -Wl,-Map=$(MAPFILE)
    INCLUDES = -Iinclude/common -Iinclude/msp432 -Iinclude/CMSIS
    SOURCES = src/main.c src/memory.c src/interrupts_msp432p401r_gcc.c src/startup_msp432p401r_gcc.c src/system_msp432p401r.c
else
    $(error "PLATFORM must be set to HOST or MSP432")
endif

OBJDIR = build/$(PLATFORM)
OBJECTS = $(patsubst src/%.c,$(OBJDIR)/%.o,$(SOURCES))

# === 預設目標 ===
.PHONY: all
all: build

# --- 建立物件檔目錄 ---
$(OBJDIR):
	mkdir -p $(OBJDIR)


# --- 編譯物件檔 ---
$(OBJDIR)/%.o: src/%.c | $(OBJDIR)
	$(CC) -c $(CFLAGS) $(INCLUDES) $< -o $@

# --- 連結生成可執行檔 ---
$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) $(INCLUDES) $(OBJECTS) -o $@ $(LDFLAGS)
ifeq ($(PLATFORM),HOST)
	size $(TARGET)
else
	arm-none-eabi-size $(TARGET)
endif


# --- 產生預處理檔 (.i) ---
%.i: src/%.c
	$(CC) -E $(CFLAGS) $(INCLUDES) $< -o $@

# --- 產生組合語言檔 (.asm) ---
%.asm: src/%.c
	$(CC) -S $(CFLAGS) $(INCLUDES) $< -o $@
ifeq ($(PLATFORM),HOST)
	objdump -d $(TARGET) > $(TARGET).asm
else ifeq ($(PLATFORM),MSP432)
	arm-none-eabi-objdump -d $(TARGET) > $(TARGET).asm
endif

# === 單檔編譯（如 make memory.o PLATFORM=MSP432） ===
%.o:
	$(CC) -c $(CFLAGS) $(INCLUDES) src/$*.c -o $@

# === build: 建構整體專案 ===
.PHONY: build
build: $(TARGET)

# --- compile-all: 只編譯物件檔，不連結 ---
.PHONY: compile-all
compile-all: $(OBJECTS)

# --- clean: 清理所有編譯檔 ---
.PHONY: clean
clean:
	rm -rf build
	rm -f $(TARGET) $(MAPFILE) *.i *.asm


