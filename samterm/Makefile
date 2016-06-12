#	Copyright (c) 1992 AT&T - All rights reserved.
#	Copyright (c) 1992 AT&T - All rights reserved.
#
#	Prototype Makefile for samterm
#
#	define operating system.  ONE of:
#		-DIRIX -DSUNOS -DUMIPS -DSYSVR3 -DAIX -DOSF1
#		-DHPUX -DAPOLLO -DCONVEX -DDYNIX
#	
#	Additionally, -D_POSIX_SOURCE (or its equivalent) may be specified
#	if your compiler supports posix-compatible compilation
OS=

#	add -Iincludedir for any include directories that need to be searched
#	for posix header files (for UMIPS, add -I/usr/include/posix)
INCS=-I../include

#	SAMTERM contains the name of the file containing the samterm
#	executable.  SAMTERMDIR is the directory where it is installed.
SAMTERM=samterm
SAMTERMDIR=/usr/X386/bin

#	set this if your X libraries are in different locations
#	or if you need extra libraries to load with X11 applications
XLIBS=/usr/lib/libXt.a /usr/lib/libSM.a /usr/lib/libICE.a /usr/lib/libX11.a /usr/lib/libxcb.a /usr/lib/libXau.a /usr/lib/libXdmcp.a

CFLAGS=$(OS) $(INCS) -D_LIBXG_EXTENSION

LIBS=../libframe/libframe.a ../libXg/libXg.a
CC=cc

OBJ=main.o flayer.o icons.o io.o menu.o mesg.o rasp.o scroll.o unix.o

all:	samterm

samterm:	$(OBJ) $(LIBS)
	$(CC) -o samterm $(OBJ) $(LIBS) $(XLIBS)

clean:
	rm -f *.o core

nuke:	clean
	rm -f samterm

install:	samterm
	cp samterm $(SAMTERMDIR)/$(SAMTERM)

$(OBJ):	samterm.h flayer.h ../include/frame.h ../include/libg.h ../include/u.h ../include/libc.h ../sam/mesg.h
