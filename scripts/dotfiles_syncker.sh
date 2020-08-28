#!/bin/bash

# Get the directory in which the present file is
dir="$( builtin cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Uncomment this line if you want to manually select the dotfiles you want to link
#dotfiles=(".aliases" ".bash_profile" ".bash_prompt" ".bashrc" ".exports" ".functions" ".path" ".vimrc") 

# Otherwise, get all the dotfiles of the present directory
dotfiles=$(find ${dir} -name "\.[a-z,A-Z]*" -exec basename {} \; | grep -v ".git")

# Link the selected dotfiles to be the effective dotfiles in home directory
for dotfile in ${dotfiles[@]};do
	ln -sf "${dir}/${dotfile}" "${HOME}/${dotfile}" 
done
