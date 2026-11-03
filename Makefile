TARGET = libCoccocAI.dylib
CC = xcrun -sdk iphoneos clang
CFLAGS = -arch arm64 -isysroot $(shell xcrun -sdk iphoneos --show-sdk-path) -miphoneos-version-min=12.0 -fobjc-arc
LDFLAGS = -dynamiclib -framework UIKit -framework Foundation -framework CoreGraphics

all: $(TARGET)

$(TARGET): MenuManager.mm
	$(CC) $(CFLAGS) $(LDFLAGS) MenuManager.mm -o $(TARGET)

clean:
	rm -f $(TARGET)
