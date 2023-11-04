# slstatus version
VERSION = 1.0

include ../flags.mk

# customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/man

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

# flags
CPPFLAGS = -I$(X11INC) -D_DEFAULT_SOURCE -DVERSION=\"${VERSION}\" ${HARDENING_CPPFLAGS}
CFLAGS   = -std=c99 -pedantic -Wall -Wextra -Wno-unused-parameter ${O_FLAG} ${CFLAGS_LTO} ${HARDENING_CFLAGS}
LDFLAGS  = -L$(X11LIB) -s ${LDFLAGS_LTO} ${HARDENING_LDFLAGS}
LDLIBS   = -lX11 -lsndio

# compiler and linker
CC = cc
