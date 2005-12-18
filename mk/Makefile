# basename - basename unix port from plan9
# Depends on ../lib9

TARG	= mk
OFILES  = arc.o archive.o bufblock.o env.o file.o graph.o job.o\
		  lex.o main.o match.o mk.o parse.o recipe.o rc.o rule.o\
		  run.o sh.o shell.o shprint.o symtab.o var.o varsub.o\
		  word.o unix.o
MANFILES  = ${TARG}.1

include ../config.mk

all: ${TARG}
	@echo built ${TARG}

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
	rm -f ${OFILES} ${TARG}

${TARG}: ${OFILES}
	@echo LD ${TARG}
	@${CC} ${LDFLAGS} -o ${TARG} ${OFILES} -L${PREFIX}/lib -L../lib9 -l9
