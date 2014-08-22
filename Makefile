TARGET = uncodesign
PREFIX = /usr/local
BINDIR = $(PREFIX)/bin

build: init
	clang src/$(TARGET).c -o bin/$(TARGET)

install: build
	install -m 0755 bin/$(TARGET) $(BINDIR)

uninstall:
	-rm $(BINDIR)/$(TARGET)

init:
	@mkdir -p bin
