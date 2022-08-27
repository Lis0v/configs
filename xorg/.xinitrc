#!/bin/sh
# feh --bg-scale ~/media/pics/walls/422.png &
# picom &
sh /home/umbro/.config/dwm/autostart.sh &
dunst &
setxkbmap pl &
xbanish &
exec dwm
