# yacc - yacc unix port from plan9
# Depends on ../lib9

TARG      = yacc

include ../std.mk

pre-uninstall:
	rm -f ${DESTDIRK}${PREFIX}/yacc/yaccpar
	rm -f ${DESTDIRK}${PREFIX}/yacc/yaccpars

post-install:
	@mkdir -p ${DESTDIR}${PREFIX}/yacc
	@cp yaccpar ${DESTDIR}${PREFIX}/yacc/
	@cp yaccpars ${DESTDIR}${PREFIX}/yacc/
