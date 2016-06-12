#	Copyright (c) 1992 AT&T - All rights reserved.
#
#	master makefile for sam.  configure sub-makefiles first.
#

all:	lXg lframe samdir samtermdir

lXg:
	cd libXg; $(MAKE)
lframe:
	cd libframe; $(MAKE)

samdir:
	cd sam; $(MAKE)

samtermdir:
	cd samterm; $(MAKE)

install:
	cd libXg; $(MAKE) install
	cd libframe; $(MAKE) install
	cd sam; $(MAKE) install
	cd samterm; $(MAKE) install

clean:
	cd libXg; $(MAKE) clean
	cd libframe; $(MAKE) clean
	cd sam; $(MAKE) clean
	cd samterm; $(MAKE) clean

nuke:
	cd libXg; $(MAKE) nuke
	cd libframe; $(MAKE) nuke
	cd sam; $(MAKE) nuke
	cd samterm; $(MAKE) nuke
