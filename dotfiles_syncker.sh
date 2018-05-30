#!/bin/bash

dotfiles=(".aliases" ".bash_profile" ".bash_prompt" ".bashrc" ".exports" ".functions" ".path" ".vimrc") 
#dotfiles=$(find ~/jon-dotfiles/ -name "\.[a-z,A-Z]*")
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Link the files in dotfiles to be the effective dotfiles normally present in home directory
for dotfile in "${dotfiles[@]}";do
	ln -sf "${dir}/${dotfile}" "${HOME}/${dotfile}" 
done
