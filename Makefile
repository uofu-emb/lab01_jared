hello.txt:
	echo "hello world!" > hello.txt

PICO_TOOLCHAIN_PATH?=~/.pico-sdk/toolchain/13_2_Rel1
CPP=$(PICO_TOOLCHAIN_PATH)/bin/arm-none-eabi-cpp

main.i: main.c
	$(CPP) main.c > main.i

clean:
	rm -f main.i hello.txt

.PHONY: clean

CC=$(PICO_TOOLCHAIN_PATH)/bin/arm-none-eabi-gcc
AS=$(PICO_TOOLCHAIN_PATH)/bin/arm-none-eabi-as

%.o: %.s
    $(AS) $< -o $@