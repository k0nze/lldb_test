TARGET=main
CFLAGS=-std=c++17 -g
LDFLAGS=
UNAME_S:=$(shell uname -s)

ifeq ($(UNAME_S),Darwin)
	MACOS_SDK_PATH = $(shell xcrun -show-sdk-path)
	CFLAGS+=-isysroot $(MACOS_SDK_PATH)
	LDFLAGS+=-isysroot $(MACOS_SDK_PATH)
endif

all: main

%.o: %.cc
	$(CXX) $(CFLAGS) -c $< -o $@

test_lib.so: test_lib.o
	$(CXX) $(CFLAGS) -shared -fPIC $< -o $@

main: main.o test_lib.so
	$(CXX) $(LDFLAGS) -o $@ $^

.PHONY: clean

clean:
	-rm *.o
	-rm main
	-rm $(TARGET)
