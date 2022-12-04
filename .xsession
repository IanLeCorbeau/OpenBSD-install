#!/bin/sh

. ~/.profile

#xrandr --output LVDS-1 --off 
xset +fp /usr/local/share/fonts/font-awesome
setxkbmap ca
export LC_CTYPE="en_CA.UTF-8"
xrdb -merge $HOME/.Xresources
xcompmgr &
xwallpaper --stretch ~/Pictures/defwall.jpg &
sxhkd &
.local/src/slstatus/slstatus &
exec /usr/local/bin/dwm
#exec /usr/X11R6/bin/cwm
