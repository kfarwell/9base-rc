# grep - grep unix port from plan9
# Depends on ../lib9

include ../config.mk

TARG      = grep

OFILES    = y.tab.o main.o comp.o sub.o

YFILES    = grep.y

MANFILES  = grep.1

all:
	@if [ ! -f y.tab.c ]; then \
	${MAKE} -f Makefile depend;\
	fi
	@${MAKE} -f Makefile ${TARG}
	@echo built ${TARG}

depend:
	@echo YACC ${YFILES}
	@${YACC} -d ${YFILES}

install: ${TARG}
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@cp -f ${TARG} ${DESTDIR}${PREFIX}/bin/
	@chmod 755 ${DESTDIR}${PREFIX}/bin/${TARG}
	@mkdir -p ${DESTDIR}${MANPREFIX}/man1
	@cp -f ${MANFILES} ${DESTDIR}${MANPREFIX}/man1
	@chmod 444 ${DESTDIR}${MANPREFIX}/man1/${MANFILES}

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/${TARG}
	rm -f ${DESTDIR}${PREFIX}/man1/${MANFILES}

.c.o:
	@echo CC $*.c
	@${CC} ${CFLAGS} -I../lib9 -I${PREFIX}/include -I../lib9 $*.c

clean:
	rm -f ${OFILES} ${TARG} y.tab.c y.tab.h

${TARG}: ${OFILES}
	@echo LD ${TARG}
	@${CC} ${LDFLAGS} -o ${TARG} ${OFILES} -L${PREFIX}/lib -L../lib9 -l9
