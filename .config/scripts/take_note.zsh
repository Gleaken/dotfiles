#!/usr/bin/zsh

datetime=$(date +"%Y-%m-%d_%H-%M")

# Example: use it as a part of filename
filename="note_${datetime}.md"

kitty --app-id=kitty-note zsh -c "cd ~/Documents/obsidian/mynotes && nvim"
