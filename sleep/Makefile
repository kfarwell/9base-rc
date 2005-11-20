# sleep - sleep unix port from plan9
# Depends on ../lib9

include ../config.mk

TARG      = sleep

OFILES    = sleep.o

MANFILES  = sleep.1

all: ${TARG}
	@echo built ${TARG}

install: ${TARG}
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@cp -f ${TARG} ${DESTDIR}${PREFIX}/bin/
	@chmod 755 ${DESTDIR}${PREFIX}/bin/${TARG}
	@mkdir -p ${DESTDIR}${MANPREFIX}/man1
	@cp ${MANFILES} ${DESTDIR}${MANPREFIX}/man1
	@chmod 444 ${DESTDIR}${MANPREFIX}/man1/${MANFILES}

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/${TARG}
	rm -f ${DESTDIR}${MANPREFIX}/man1/${MANFILES}

.c.o:
	@echo CC $*.c
	@${CC} ${CFLAGS} -I../lib9 -I${PREFIX}/include -I../lib9 $*.c

clean:
	rm -f ${OFILES} ${TARG}
	@echo cleaned ${TARG}

${TARG}: ${OFILES}
	@echo LD ${TARG}
	@${CC} ${LDFLAGS} -o ${TARG} ${OFILES} -L${PREFIX}/lib -L../lib9 -l9
