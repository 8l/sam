#	Copyright (c) 1992 AT&T - All rights reserved.
#	Copyright (c) 1992 AT&T - All rights reserved.
#
#	Prototype Makefile for libframe
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

#	add name of library orderer - use ":" if none exists
RANLIB=ranlib

#	add name of library
AR=ar

CFLAGS=-c $(OS) $(INCS) -D_LIBXG_EXTENSION

LIB=libframe.a
CC=cc

OBJ=frbox.o frdelete.o frdraw.o frinit.o frinsert.o frptofchar.o\
	frselect.o frstr.o frutil.o misc.o

all:	$(LIB)

$(LIB):	$(OBJ)
	$(AR) rv $(LIB) $(OBJ)
	$(RANLIB) $(LIB)

clean:
	rm -f *.o

nuke:	clean
	rm -f $(LIB)

install:	$(LIB)

$(OBJ):	../include/u.h ../include/libc.h ../include/frame.h
