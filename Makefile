.PHONY: all run clean

CC=mupc-cc
EMU=mupc-emu

OUT_DIR=out
OUT=program.bin

all: clean $(OUT_DIR) $(OUT_DIR)/$(OUT)

$(OUT_DIR)/%.bin: %.mc
	$(CC) $< -o $@

$(OUT_DIR):
	mkdir $(OUT_DIR)

run: all
	@echo
	@$(EMU) $(OUT_DIR)/$(OUT)

clean:
	rm -rf $(OUT_DIR)