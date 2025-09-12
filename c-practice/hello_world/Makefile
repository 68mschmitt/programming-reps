# Makefile
APP      := app
BUILD    := build
SRC      := main.c
CC       := gcc
CSTD     := c11
# Turn on strictness + useful warnings
CFLAGS   := -std=$(CSTD) -Wall -Wextra -Wpedantic -Wshadow -Wconversion -O0 -g
# Optional sanitizers; set SAN=0 to disable (e.g., `make run SAN=0`)
ifeq ($(SAN),1)
CFLAGS   += -fsanitize=address,undefined
LDFLAGS  += -fsanitize=address,undefined
endif

.PHONY: all run test clean watch

all: $(BUILD)/$(APP)

$(BUILD)/$(APP): $(SRC) | $(BUILD)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

$(BUILD):
	mkdir -p $(BUILD)

run: all
	./$(BUILD)/$(APP)

test: all
	@bash tests/test.sh ./$(BUILD)/$(APP)

clean:
	rm -rf $(BUILD)

# Optional: auto-run on file save if you have `entr`
watch:
	@ls -1 *.c tests/* 2>/dev/null | entr -c make test
