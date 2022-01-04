PREFIX := /usr/local

#install by default
all: install

install:
	# copies ani-cli file to /usr/local/bin/ani-cli, which should be in path
	cp esp-anicli $(DESTDIR)$(PREFIX)/bin/esp-anicli
	# marks ani-cli executable
	chmod 0755 $(DESTDIR)$(PREFIX)/bin/esp-anicli

uninstall:
	rm -rf $(DESTDIR)$(PREFIX)/bin/esp-anicli

.PHONY: all install uninstall
