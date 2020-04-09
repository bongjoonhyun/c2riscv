CC := riscv32-unknown-linux-gnu-gcc
OBJDUMP := riscv32-unknown-linux-gnu-objdump --disassemble

CC_SUFFIX := c
BIN_SUFFIX := bin
ASM_SUFFIX := asm

SRC_DIR := ./src
BIN_DIR := ./bin
ASM_DIR := ./asm

# all sources
#SRC = $(filter-out $(MAIN), $(wildcard $(SRC_DIR)/*.$(CXX_SUFFIX)))
SRC = $(wildcard $(SRC_DIR)/*.$(CC_SUFFIX))
SRC	+= $(wildcard $(SRC_DIR)/**/*.$(CC_SUFFIX))

# objects
BIN = $(patsubst $(SRC_DIR)/%.$(CC_SUFFIX), $(BIN_DIR)/%.$(BIN_SUFFIX), $(SRC))
ASM = $(patsubst $(SRC_DIR)/%.$(CC_SUFFIX), $(ASM_DIR)/%.$(ASM_SUFFIX), $(SRC))

.PHONY: all clean

# top program
all: test

test: $(ASM)
	@echo "All binaries are compiled"

clean:
	rm -rf $(BIN)
	rm -rf $(ASM)

# objects (all sources)
$(BIN_DIR)/%.$(BIN_SUFFIX): $(SRC_DIR)/%.$(CC_SUFFIX)
	@mkdir -p $(dir $@)
	$(CC) $< -o $@

$(ASM_DIR)/%.$(ASM_SUFFIX): $(BIN_DIR)/%.$(BIN_SUFFIX)
	@mkdir -p $(dir $@)
	$(OBJDUMP) $< > $@