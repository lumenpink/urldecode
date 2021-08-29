PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin

install:
	$(info Installing the library to $(BINDIR))
	@install -Dm755 ./urldecode.sh  $(BINDIR)/urldecode

uninstall:
	$(info Removing library from $(BINDIR))
	@rm -f $(BINDIR)/urldecode

test:
	$(info Running shellspec tests)
	@rm -rf ./coverage
	@shellspec --kcov

.PHONY: install uninstall test
