TARGET=main
CFLAGS=-std=c++17 -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX13.3.sdk 
LDFLAGS=-isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX13.3.sdk

all: main

%.o: %.cc
	$(CXX) $(CFLAGS) -c $< -o $@

main: main.o
	$(CXX) $(LDFLAGS) -o $@ $^

.PHONY: clean

clean:
	-rm *.o
	-rm main
	-rm $(TARGET)
