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
O=o

# following objects are not compiled for several reasons
#	crypt.$(O)
#	netcrypt.$(O)
#	convD2M.$(O)
#	convM2D.$(O)
#	convM2S.$(O)
#	convS2M.$(O)

NUM=\
	fmt/charstod.$(O)\
	fmt/pow10.$(O)\

FMTOFILES=\
	fmt/dofmt.$(O)\
	fmt/fltfmt.$(O)\
	fmt/fmt.$(O)\
	fmt/fmtfd.$(O)\
	fmt/fmtfdflush.$(O)\
	fmt/fmtlocale.$(O)\
	fmtlock2.$(O)\
	fmt/fmtnull.$(O)\
	fmt/fmtprint.$(O)\
	fmt/fmtquote.$(O)\
	fmt/fmtrune.$(O)\
	fmt/fmtstr.$(O)\
	fmt/fmtvprint.$(O)\
	fmt/fprint.$(O)\
	fmt/nan64.$(O)\
	fmt/print.$(O)\
	fmt/runefmtstr.$(O)\
	fmt/runeseprint.$(O)\
	fmt/runesmprint.$(O)\
	fmt/runesnprint.$(O)\
	fmt/runesprint.$(O)\
	fmt/runevseprint.$(O)\
	fmt/runevsmprint.$(O)\
	fmt/runevsnprint.$(O)\
	fmt/seprint.$(O)\
	fmt/smprint.$(O)\
	fmt/snprint.$(O)\
	fmt/sprint.$(O)\
	fmt/strtod.$(O)\
	fmt/vfprint.$(O)\
	fmt/vseprint.$(O)\
	fmt/vsmprint.$(O)\
	fmt/vsnprint.$(O)\
	$(NUM)\

UTFOFILES=\
	utf/rune.$(O)\
	utf/runestrcat.$(O)\
	utf/runestrchr.$(O)\
	utf/runestrcmp.$(O)\
	utf/runestrcpy.$(O)\
	utf/runestrdup.$(O)\
	utf/runestrlen.$(O)\
	utf/runestrecpy.$(O)\
	utf/runestrncat.$(O)\
	utf/runestrncmp.$(O)\
	utf/runestrncpy.$(O)\
	utf/runestrrchr.$(O)\
	utf/runestrstr.$(O)\
	utf/runetype.$(O)\
	utf/utfecpy.$(O)\
	utf/utflen.$(O)\
	utf/utfnlen.$(O)\
	utf/utfrrune.$(O)\
	utf/utfrune.$(O)\
	utf/utfutf.$(O)\

BIOFILES=\
	bio/bbuffered.$(O)\
	bio/bfildes.$(O)\
	bio/bflush.$(O)\
	bio/bgetc.$(O)\
	bio/bgetrune.$(O)\
	bio/bgetd.$(O)\
	bio/binit.$(O)\
	bio/boffset.$(O)\
	bio/bprint.$(O)\
	bio/bputc.$(O)\
	bio/bputrune.$(O)\
	bio/brdline.$(O)\
	bio/brdstr.$(O)\
	bio/bread.$(O)\
	bio/bseek.$(O)\
	bio/bvprint.$(O)\
	bio/bwrite.$(O)\

REGEXFILES=\
	regex/regcomp.$(O)\
	regex/regerror.$(O)\
	regex/regexec.$(O)\
	regex/regsub.$(O)\
	regex/regaux.$(O)\
	regex/rregexec.$(O)\
	regex/rregsub.$(O)\

LIB9OFILES=\
	_exits.$(O)\
	_p9dialparse.$(O)\
	_p9dir.$(O)\
	announce.$(O)\
	argv0.$(O)\
	atexit.$(O)\
	atoi.$(O)\
	atol.$(O)\
	atoll.$(O)\
	atnotify.$(O)\
	await.$(O)\
	cistrcmp.$(O)\
	cistrncmp.$(O)\
	cistrstr.$(O)\
	cleanname.$(O)\
	create.$(O)\
	ctime.$(O)\
	dial.$(O)\
	dirfstat.$(O)\
	dirfwstat.$(O)\
	dirmodefmt.$(O)\
	dirread.$(O)\
	dirstat.$(O)\
	dirwstat.$(O)\
	dup.$(O)\
	encodefmt.$(O)\
	errstr.$(O)\
	exec.$(O)\
	execl.$(O)\
	exitcode.$(O)\
	fcallfmt.$(O)\
	get9root.$(O)\
	getcallerpc-$(OBJTYPE).$(O)\
	getenv.$(O)\
	getfields.$(O)\
	getnetconn.$(O)\
	getns.$(O)\
	getuser.$(O)\
	getwd.$(O)\
	jmp.$(O)\
	lrand.$(O)\
	lnrand.$(O)\
	main.$(O)\
	malloc.$(O)\
	malloctag.$(O)\
	mallocz.$(O)\
	nan.$(O)\
	needsrcquote.$(O)\
	needstack.$(O)\
	netmkaddr.$(O)\
	notify.$(O)\
	nrand.$(O)\
	nulldir.$(O)\
	open.$(O)\
	opentemp.$(O)\
	pin.$(O)\
	pipe.$(O)\
	post9p.$(O)\
	postnote.$(O)\
	qlock.$(O)\
	quote.$(O)\
	rand.$(O)\
	read9pmsg.$(O)\
	readcons.$(O)\
	readn.$(O)\
	rfork.$(O)\
	searchpath.$(O)\
	seek.$(O)\
	sendfd.$(O)\
	sleep.$(O)\
	strdup.$(O)\
	strecpy.$(O)\
	sysfatal.$(O)\
	syslog.$(O)\
	sysname.$(O)\
	time.$(O)\
	tm2sec.$(O)\
	tokenize.$(O)\
	truerand.$(O)\
	u16.$(O)\
	u32.$(O)\
	u64.$(O)\
	unsharp.$(O)\
	wait.$(O)\
	waitpid.$(O)\
	write.$(O)\
	zoneinfo.$(O)\

OFILES=\
	$(FMTOFILES)\
	$(UTFOFILES)\
	$(BIOFILES)\
	$(REGEXFILES)\
	$(LIB9OFILES)

OFILESOLD=\
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
	getcallerpc-$(OBJTYPE).o\
	get9root.o\
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
