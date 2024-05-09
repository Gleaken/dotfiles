#!/usr/bin/env bash
#
lxsession &
picom --daemon &
xwallpaper --stretch /home/janusz/Pictures/skull_and_bones_2018_video_game-wallpaper-3840x1200.jpg &
setxkbmap -layout pl &
dunst -config ~/.config/dotfiles/dunst/dunstrc &
#insync start &
#ckb-next -b
