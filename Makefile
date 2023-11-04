# Install all dotfiles and build Suckless' tools using 'make' on OpenBSD.

CONFIG_DIRS	= sxhkd mpv vifm
DOTFILES	= .Xresources .cwmrc .kshrc .profile .tmux.conf .vimrc \
		  .xsession
SCRIPTS		= OBSD_net.sh chwall-dmenu netupdown.sh poweroffreboot screencap

all:
	mkdir -p ${DESTDIR}/.config
	mkdir -p ${DESTDIR}/.local/bin
	for _dir in ${CONFIG_DIRS}; do \
		cp -r .config/$$_dir ${DESTDIR}/.config/; \
		done
	for _file in ${DOTFILES}; do \
		cp $$_file ${DESTDIR}/; \
		done
	for _script in ${SCRIPTS}; do \
		install -m 755 .local/bin/$$_script ${DESTDIR}/.local/bin; \
		done
	make -C .local/src

install:
	make -C .local/src install
