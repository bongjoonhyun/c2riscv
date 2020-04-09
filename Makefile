CC := riscv32-unknown-linux-gnu-gcc
OBJDUMP := riscv32-unknown-linux-gnu-objdump --disassemble

CC_SUFFIX := c
BIN_SUFFIX := bin
ASM_SUFFIX := asm
HEX_SUFFIX := hex

CC_FLAG :=

SRC_DIR := ./src
BIN_DIR := ./bin
ASM_DIR := ./asm
HEX_DIR := ./hex

# all sources
#SRC = $(filter-out $(MAIN), $(wildcard $(SRC_DIR)/*.$(CXX_SUFFIX)))
SRC = $(wildcard $(SRC_DIR)/*.$(CC_SUFFIX))
SRC	+= $(wildcard $(SRC_DIR)/**/*.$(CC_SUFFIX))

# objects
BIN = $(patsubst $(SRC_DIR)/%.$(CC_SUFFIX), $(BIN_DIR)/%.$(BIN_SUFFIX), $(SRC))
ASM = $(patsubst $(SRC_DIR)/%.$(CC_SUFFIX), $(ASM_DIR)/%.$(ASM_SUFFIX), $(SRC))
HEX = $(patsubst $(SRC_DIR)/%.$(CC_SUFFIX), $(HEX_DIR)/%.$(HEX_SUFFIX), $(SRC))

.PHONY: all clean

# top program
all: test

test: $(HEX)
	@echo "All binaries are compiled"

clean:
	rm -rf $(BIN)
	rm -rf $(ASM)
	rm -rf $(HEX)

# objects (all sources)
$(BIN_DIR)/%.$(BIN_SUFFIX): $(SRC_DIR)/%.$(CC_SUFFIX)
	@mkdir -p $(dir $@)
	$(CC) $(CC_FLAG) $< -o $@

$(ASM_DIR)/%.$(ASM_SUFFIX): $(BIN_DIR)/%.$(BIN_SUFFIX)
	@mkdir -p $(dir $@)
	$(OBJDUMP) $< > $@

$(HEX_DIR)/%.$(HEX_SUFFIX): $(ASM_DIR)/%.$(ASM_SUFFIX)
	@mkdir -p $(dir $@)
	python3 main_extractor.py --input $<