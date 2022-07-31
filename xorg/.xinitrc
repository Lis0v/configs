#!/bin/sh
feh --bg-scale ~/media/pics/walls/05.jpg &
picom &
sh /home/umbro/.config/dwm/autostart.sh &
dunst &
exec dwm
