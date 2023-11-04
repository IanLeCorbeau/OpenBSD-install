# st version
VERSION = 0.8.2

# Customize below to fit your system

include ../flags.mk

# paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/man

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

PKG_CONFIG = pkg-config

# includes and libs
INCS = -I$(X11INC) \
       `$(PKG_CONFIG) --cflags fontconfig` \
       `$(PKG_CONFIG) --cflags freetype2`
LIBS = -L$(X11LIB) -lm -lX11 -lutil -lXft -lXrender\
       `$(PKG_CONFIG) --libs fontconfig` \
       `$(PKG_CONFIG) --libs freetype2`

# flags
STCPPFLAGS = -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600 -D_BSD_SOURCE ${HARDENING_CPPFLAGS}
STCFLAGS = $(INCS) $(STCPPFLAGS) $(CPPFLAGS) ${O_FLAG} -pipe ${CFLAGS_LTO} ${HARDENING_CFLAGS}
STLDFLAGS = $(LIBS) ${LDFLAGS_LTO} $(LDFLAGS) ${HARDENING_LDFLAGS}

# compiler and linker
# CC = c99
