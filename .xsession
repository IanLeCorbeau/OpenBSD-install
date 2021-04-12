#!/bin/sh

. ~/.profile

xrandr -s 1920x1080 

setxkbmap ca
export LC_CTYPE="en_US.UTF-8"
xrdb -merge $HOME/.Xresources
compton -b &
xwallpaper --stretch ~/Pictures/defwall.jpg &
sxhkd &
exec /usr/local/bin/dwm
