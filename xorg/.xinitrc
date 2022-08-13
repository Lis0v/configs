#!/bin/sh
feh --bg-scale ~/media/pics/walls/421.jpg &
# picom &
sh /home/umbro/.config/dwm/autostart.sh &
dunst &
setxkbmap pl &
xbanish &
exec dwm
