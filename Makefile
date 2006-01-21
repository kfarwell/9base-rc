# 9base - awk basename cat cleanname echo grep rc sed seq sleep sort tee
#         test touch tr uniq from Plan 9

include config.mk

SUBDIRS  = lib9 yacc awk basename bc cat cleanname date echo grep mk \
		   rc sed seq sleep sort tee test touch tr uniq

all:
	@echo 9base build options:
	@echo "CFLAGS   = ${CFLAGS}"
	@echo "LDFLAGS  = ${LDFLAGS}"
	@echo "CC       = ${CC}"
	@chmod 755 yacc/9yacc
	@for i in ${SUBDIRS}; do cd $$i; ${MAKE} || exit; cd ..; done;

clean:
	@for i in ${SUBDIRS}; do cd $$i; ${MAKE} clean || exit; cd ..; done
	@echo cleaned 9base

install: all
	@for i in ${SUBDIRS}; do cd $$i; ${MAKE} install || exit; cd ..; done
	@echo installed 9base to ${DESTDIR}${PREFIX}

uninstall:
	@for i in ${SUBDIRS}; do cd $$i; ${MAKE} uninstall || exit; cd ..; done
	@echo uninstalled 9base

dist: clean
	@mkdir -p 9base-${VERSION}
	@cp -R Makefile README LICENSE std.mk yacc.mk config.mk ${SUBDIRS} 9base-${VERSION}
	@tar -cf 9base-${VERSION}.tar 9base-${VERSION}
	@gzip 9base-${VERSION}.tar
	@rm -rf 9base-${VERSION}
	@echo created distribution 9base-${VERSION}.tar.gz
