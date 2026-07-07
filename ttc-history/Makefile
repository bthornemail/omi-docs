CC ?= cc
CFLAGS ?= -std=c11 -O2 -Wall -Wextra -Wpedantic -Iinclude
LDFLAGS ?= -lm

BIN_DIR := bin

OBJS_TTC := $(BIN_DIR)/main.o $(BIN_DIR)/ttc_core.o $(BIN_DIR)/ttc_posix.o $(BIN_DIR)/ttc_linux.o $(BIN_DIR)/pf.o
OBJS_POLYFORM := $(BIN_DIR)/main_polyform.o $(BIN_DIR)/svg.o $(BIN_DIR)/polyform.o

TARGET_TTC := $(BIN_DIR)/ttc
TARGET_POLYFORM := $(BIN_DIR)/polyform

all: $(TARGET_TTC) $(TARGET_POLYFORM)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

$(BIN_DIR)/%.o: src/%.c | $(BIN_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(TARGET_TTC): $(OBJS_TTC)
	$(CC) $^ $(LDFLAGS) -o $@

$(TARGET_POLYFORM): $(OBJS_POLYFORM)
	$(CC) $^ $(LDFLAGS) -o $@

examples: $(TARGET_TTC) $(TARGET_POLYFORM)
	mkdir -p out
	./$(TARGET_TTC) replay-hex $$(tr -d '\n' < examples/demo_input.hex) > out/replay_demo.txt
	printf 'ABC' | ./$(TARGET_TTC) stdio > out/stdio_demo.txt
	./$(TARGET_TTC) xdp-plan eth0 linux/xdp_stub.bpf.o xdp > out/xdp_plan.txt
	./$(TARGET_TTC) afxdp-plan eth0 0 > out/afxdp_plan.txt
	./$(TARGET_TTC) cgroup-plan ttc-demo > out/cgroup_plan.txt

clean:
	rm -rf $(BIN_DIR) out /tmp/ttc.fifo /tmp/ttc.sock

.PHONY: all clean examples