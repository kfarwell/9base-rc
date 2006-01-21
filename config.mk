# Customize to fit your system

# paths
PREFIX      = /usr/local/9
MANPREFIX   = ${PREFIX}/share/man

# flags
VERSION     = 20060110
CFLAGS      = -Wall -Wno-missing-braces -Wno-parentheses -Wno-switch -c -I. -DPREFIX="\"${PREFIX}\""
LDFLAGS     = -static

# Linux/BSD
CFLAGS      = -Wall -Wno-missing-braces -Wno-parentheses -Wno-switch -c -I. -DPREFIX="\"${PREFIX}\""
LDFLAGS     = -static

# Solaris
#CFLAGS      = -fast -xtarget=ultra -D__sun__ -c -I. -DPREFIX="\"${PREFIX}\""
#LDFLAGS     = -dn

# compiler
AR          = ar rc
CC          = cc
YACC        = ../yacc/9yacc
