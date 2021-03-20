PREFIX ?= /usr
MANDIR ?= $(PREFIX)/share/man

default:
	@printf "targets:\n  make install\n  make uninstall\n"

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@install -Dm755 tuxfetch $(DESTDIR)$(PREFIX)/bin/tuxfetch
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p tuxfetch.1 $(DESTDIR)$(MANDIR)/man1

uninstall:
	@rm -f $(DESTDIR)$(PREFIX)/bin/tuxfetch
	@rm -rf $(DESTDIR)$(MANDIR)/man1/tuxfetch.1*
