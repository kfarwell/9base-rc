# yacc - yacc unix port from plan9
# Depends on ../lib9

include ../config.mk

TARG      = yacc

OFILES    = yacc.o

MANFILES  = yacc.1

all: ${TARG}

.c.o:
	@echo CC $*.c
	@${CC} ${CFLAGS} -I../lib9 -I${PREFIX}/include -I../lib9 $*.c

clean:
	@rm -f ${OFILES} ${TARG}

${TARG}: ${OFILES}
	@echo LD ${TARG}
	@${CC} ${LDFLAGS} -o ${TARG} ${OFILES} -L${PREFIX}/lib -L../lib9 -l9

install:

uninstall:
