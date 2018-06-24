#!/bin/bash

# Get the directory in which the present file is
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Uncomment this line if you want to manually select the dotfiles you want to link
#dotfiles=(".aliases" ".bash_profile" ".bash_prompt" ".bashrc" ".exports" ".functions" ".path" ".vimrc") 

# Uncomment this line if you want all the dotfiles in the present directory to be linked except the .git files
dotfiles=$(find ${dir} -name "\.[a-z,A-Z]*" | grep -v ".git")

# Link the selected dotfiles to be the effective dotfiles in home directory
for dotfile in "${dotfiles[@]}";do
	ln -sf "${dir}/${dotfile}" "${HOME}/${dotfile}" 
done
