#!/bin/sh

. ~/.profile

#xrandr -s 1920x1080 
xset +fp /usr/local/share/fonts/font-awesome
setxkbmap ca
export LC_CTYPE="en_US.UTF-8"
xrdb -merge $HOME/.Xresources
compton -b &
xwallpaper --stretch ~/Pictures/defwall.jpg &
sxhkd &
.local/src/slstatus/slstatus &
exec /usr/local/bin/dwm
