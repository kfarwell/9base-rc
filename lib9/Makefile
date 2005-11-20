# lib9 - unix port from plan9 lib9

# this works in gnu make
SYSNAME:=${shell uname}
OBJTYPE:=${shell uname -m | sed 's;i.86;386;; s;/.*;;; s; ;;g'}

# this works in bsd make
SYSNAME!=uname
OBJTYPE!=uname -m | sed 's;i.86;386;; s;/.*;;; s; ;;g'

# the gnu rules will mess up bsd but not vice versa,
# hence the gnu rules come first.

include ../config.mk

LIB=lib9.a
TARG=lib9

# following objects are not compiled for several reasons
#	crypt.o
#	netcrypt.o
OFILES=\
	fmt/dofmt.o\
	fmt/fltfmt.o\
	fmt/fmt.o\
	fmt/fmtfd.o\
	fmt/fmtfdflush.o\
	fmt/fmtlock.o\
	fmt/fmtprint.o\
	fmt/fmtquote.o\
	fmt/fmtrune.o\
	fmt/fmtstr.o\
	fmt/fmtvprint.o\
	fmt/fprint.o\
	fmt/nan64.o\
	fmt/print.o\
	fmt/runefmtstr.o\
	fmt/runeseprint.o\
	fmt/runesmprint.o\
	fmt/runesnprint.o\
	fmt/runesprint.o\
	fmt/runevseprint.o\
	fmt/runevsmprint.o\
	fmt/runevsnprint.o\
	fmt/seprint.o\
	fmt/smprint.o\
	fmt/snprint.o\
	fmt/sprint.o\
	fmt/strtod.o\
	fmt/vfprint.o\
	fmt/vseprint.o\
	fmt/vsmprint.o\
	fmt/vsnprint.o\
	fmt/charstod.o\
	fmt/pow10.o\
	utf/rune.o\
	utf/runestrcat.o\
	utf/runestrchr.o\
	utf/runestrcmp.o\
	utf/runestrcpy.o\
	utf/runestrdup.o\
	utf/runestrlen.o\
	utf/runestrecpy.o\
	utf/runestrncat.o\
	utf/runestrncmp.o\
	utf/runestrncpy.o\
	utf/runestrrchr.o\
	utf/runestrstr.o\
	utf/runetype.o\
	utf/utfecpy.o\
	utf/utflen.o\
	utf/utfnlen.o\
	utf/utfrrune.o\
	utf/utfrune.o\
	utf/utfutf.o\
	bio/bbuffered.o\
	bio/bfildes.o\
	bio/bflush.o\
	bio/bgetc.o\
	bio/bgetd.o\
	bio/bgetrune.o\
	bio/binit.o\
	bio/boffset.o\
	bio/bprint.o\
	bio/bputc.o\
	bio/bputrune.o\
	bio/brdline.o\
	bio/brdstr.o\
	bio/bread.o\
	bio/bseek.o\
	bio/bvprint.o\
	bio/bwrite.o\
	regex/regcomp.o\
	regex/regerror.o\
	regex/regexec.o\
	regex/regsub.o\
	regex/regaux.o\
	regex/rregexec.o\
	regex/rregsub.o\
	_exits.o\
	_p9dialparse.o\
	_p9dir.o\
	announce.o\
	argv0.o\
	atexit.o\
	atoi.o\
	atol.o\
	atoll.o\
	atnotify.o\
	await.o\
	cistrcmp.o\
	cistrncmp.o\
	cistrstr.o\
	cleanname.o\
	convD2M.o\
	convM2D.o\
	convM2S.o\
	convS2M.o\
	create.o\
	ctime.o\
	date.o\
	dial.o\
	dirfstat.o\
	dirfwstat.o\
	dirmodefmt.o\
	dirread.o\
	dirstat.o\
	dirwstat.o\
	dup.o\
	encodefmt.o\
	errstr.o\
	exec.o\
	execl.o\
	fcallfmt.o\
	get9root.o\
	getcallerpc-$(OBJTYPE).o\
	getenv.o\
	getfields.o\
	getnetconn.o\
	getns.o\
	getuser.o\
	getwd.o\
	jmp.o\
	lrand.o\
	lnrand.o\
	main.o\
	malloc.o\
	malloctag.o\
	mallocz.o\
	nan.o\
	needsrcquote.o\
	needstack.o\
	netmkaddr.o\
	notify.o\
	nrand.o\
	nulldir.o\
	open.o\
	opentemp.o\
	pipe.o\
	post9p.o\
	postnote.o\
	qlock.o\
	quote.o\
	rand.o\
	read9pmsg.o\
	readcons.o\
	readn.o\
	rfork.o\
	searchpath.o\
	seek.o\
	sendfd.o\
	sleep.o\
	strdup.o\
	strecpy.o\
	sysfatal.o\
	syslog.o\
	sysname.o\
	time.o\
	tokenize.o\
	truerand.o\
	u16.o\
	u32.o\
	u64.o\
	unsharp.o\
	wait.o\
	waitpid.o\

all: ${LIB}
	@echo built lib9

install:
	@mkdir -p ${DESTDIR}${MANPREFIX}/man7
	@cp -f regexp.7 ${DESTDIR}${MANPREFIX}/man7
	@chmod 444 ${DESTDIR}${MANPREFIX}/man7/regexp.7

uninstall:
	rm -f ${DESTDIR}${MANPREFIX}/man7/regexp.7

${LIB}: ${OFILES}
	@echo AR ${TARG}
	@${AR} ${LIB} ${OFILES}

.c.o:
	@echo CC $*.c
	@${CC} -o $*.o ${CFLAGS} -I${PREFIX}/include $*.c

clean:
	rm -f ${OFILES} ${LIB}
