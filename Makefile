CC := riscv32-unknown-linux-gnu-gcc
CC_SUFFIX := c

SRC_DIR := ./src
BIN_DIR := ./bin

# all sources
#SRC = $(filter-out $(MAIN), $(wildcard $(SRC_DIR)/*.$(CXX_SUFFIX)))
SRC = $(wildcard $(SRC_DIR)/*.$(CC_SUFFIX))
SRC	+= $(wildcard $(SRC_DIR)/**/*.$(CC_SUFFIX))

# objects
BIN = $(patsubst $(SRC_DIR)/%.$(CC_SUFFIX), $(BIN_DIR)/%.bin, $(SRC))

.PHONY: all clean

# top program
all: test

test: $(BIN)
	@echo "All binaries are compiled"

clean:
	rm -rf $(BIN)

# objects (all sources)
$(BIN_DIR)/%.bin: $(SRC_DIR)/%.$(CC_SUFFIX)
	@mkdir -p $(dir $@)
	$(CC) $< -o $@