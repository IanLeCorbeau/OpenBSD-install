# dwm version
VERSION = 6.2

# Customize below to fit your system

include ../flags.mk

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/man

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

# Xinerama, comment if you don't want it
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA

# freetype
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC = ${X11INC}/freetype2

# includes and libs
INCS = -I${X11INC} -I${FREETYPEINC}
LIBS = -L${X11LIB} -lX11 ${XINERAMALIBS} ${FREETYPELIBS}

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_XOPEN_SOURCE=700L \
	   -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS} ${HARDENING_CPPFLAGS}
#CFLAGS   = -g -std=c99 -pedantic -Wall -O0 ${INCS} ${CPPFLAGS}
CFLAGS   = -std=c99 -pedantic -Wall -Wno-deprecated-declarations ${INCS} \
	   ${O_FLAG} ${CPPFLAGS} ${CFLAGS_LTO} ${HARDENING_CFLAGS}
LDFLAGS  = ${LIBS} ${LDFLAGS_LTO}  ${HARDENING_LDFLAGS}

# compiler and linker
CC = cc
