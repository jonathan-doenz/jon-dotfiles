#!/bin/bash

dotfiles=(".aliases" ".bash_profile" ".bash_prompt" ".bashrc" ".exports" ".functions" ".path" ".vimrc") 
#dotfiles=$(find ~/jon-dotfiles/ -name "\.[a-z,A-Z]*")
dir="${HOME}/jon-dotfiles"

# Link the files in dotfiles to be the effective dotfiles in home directory
for dotfile in "${dotfiles[@]}";do
	ln -sf "/Users/jonathandoenz/jon-dotfiles/${dotfile}" "${HOME}/${dotfile}" 
done
