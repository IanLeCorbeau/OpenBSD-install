# Compilation flags for Suckless tools.
# $Id$

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/man

# Flags to enable ThinLTO
CFLAGS_LTO		= -flto=thin
LDFLAGS_LTO		= -flto=thin -Wl,-O2

# -D_FORTIFY_SOURCE=2 needs -O2 or higher.
O_FLAG			= -O2

# Hardening flags
HARDENING_CPPFLAGS	= -D_FORTIFY_SOURCE=2
HARDENING_CFLAGS 	= -fPIE -Wformat -Wformat-security -fstack-clash-protection \
			  -fstack-protector-strong --param=ssp-buffer-size=4 -fcf-protection
HARDENING_LDFLAGS	= -Wl,-z,relro,-z,now -Wl,-pie -Wl,-zdefs
