# 9base - Plan 9 userland for Unix

include config.mk

SUBDIRS  = lib9\
	yacc\
	rc

all:
	@echo 9base build options:
	@echo "CFLAGS   = ${CFLAGS}"
	@echo "LDFLAGS  = ${LDFLAGS}"
	@echo "CC       = ${CC}"
	@chmod 755 yacc/9yacc
	@for i in ${SUBDIRS}; do cd $$i; ${MAKE} || exit; cd ..; done;

clean:
	@for i in ${SUBDIRS}; do cd $$i; ${MAKE} clean || exit; cd ..; done
	@rm -f 9base-${VERSION}.tar.gz
	@echo cleaned 9base

install: all
	@cd rc; ${MAKE} install || exit; cd ..
	@echo installed 9base to ${DESTDIR}${PREFIX}

uninstall:
	@cd rc; ${MAKE} uninstall || exit; cd ..
	@echo uninstalled 9base

dist: clean
	@mkdir -p 9base-${VERSION}
	@cp -R Makefile README LICENSE std.mk yacc.mk config.mk ${SUBDIRS} 9base-${VERSION}
	@tar -cf 9base-${VERSION}.tar 9base-${VERSION}
	@gzip 9base-${VERSION}.tar
	@rm -rf 9base-${VERSION}
	@echo created distribution 9base-${VERSION}.tar.gz
