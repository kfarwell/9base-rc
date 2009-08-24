# mk - mk unix port from plan9
# Depends on ../lib9

TARG      = troff

OFILES    = n1.o n2.o n3.o n4.o n5.o t6.o n6.o n7.o n8.o n9.o t10.o\
            n10.o t11.o ni.o hytab.o suftab.o dwbinit.o mbwc.o
MANFILES  = troff.1
CFLAGS    = -DUNICODE -DTMACDIR=\"tmac/tmac.\" -DTDEVNAME=\"utf\" -DFONTDIR=\"troff/font\" -DNTERMDIR=\"troff/term/tab.\" -DTEXHYPHENS=\"#9/lib/hyphen.tex\" -DALTHYPHENS=\"lib/hyphen.tex\" -DDWBHOME=\"#9/\"

include ../std.mk
