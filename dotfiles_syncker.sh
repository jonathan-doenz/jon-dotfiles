#!/bin/bash

dotfiles=$(find ~/jon-dotfiles/ -name "\.[a-z,A-Z]*")
dir="${HOME}/jon-dotfiles"

# Link the files in dotfiles to be the effective dotfiles in home directory
for dotfile in "${dotfiles[@]}";do
	#ln -sf "${HOME}/${dotfile}" "${dir}"
	ln -sf "${dotfile}" "${dir}"
done
