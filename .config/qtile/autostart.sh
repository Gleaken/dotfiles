#!/usr/bin/env bash
#
xrandr --rate 120
lxsession &
picom --daemon --config ~/.config/picom/picom.conf &
#xwallpaper --stretch /home/janusz/Pictures/skull_and_bones_2018_video_game-wallpaper-3840x1200.jpg &
find ~/Pictures/wallpapers/ -type f | shuf -n 1 | xargs xwallpaper --stretch &
setxkbmap -layout pl &
dunst -config ~/.config/dunst/dunstrc &
#insync start &
#ckb-next -b
