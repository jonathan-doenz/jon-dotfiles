#!/bin/bash

# Get the dotfiles directory
dotfiles_dir="$(dirname "$(pwd)")"

# dotfiles to be symlinked
dotfiles=(".aliases" ".aliases_sh" ".bash_profile" ".bash_prompt" ".bashrc" ".zshrc" ".zshrc_jon" ".exports" ".functions" ".functions_sh" ".path" ".vimrc" ".tmux.conf" ".gitignore") 

# to do it on all dotfiles present, could run instead:
# dotfiles=$(find ${dotfiles_dir} -name "\.[a-z,A-Z]*" -exec basename {} \; | grep -v ".git")

# Make backup directory
./make_backup_directory.sh

# Link the selected dotfiles to be the effective dotfiles in home directory
for dotfile in ${dotfiles[@]};do
	# if file is already present in home (~) directory, move it to back_up_dir
	if [[ -e "${HOME}/${dotfile}" ]]; then
		mv "${HOME}/${dotfile}" "${dotfiles_dir}/back_up_dir"
		echo "${HOME}/${dotfile} was moved to ${dotfiles_dir}/back_up_dir"
	fi 
	# then create symlink with the dotfile
	ln -sf "${dotfiles_dir}/${dotfile}" "${HOME}/${dotfile}" 
	echo "Symlink created: ${dotfiles_dir}/${dotfile} -> ${HOME}/${dotfile}"
done

# # Set up zathura's personal configs
./set_up_zathura.sh

# # Set up git_templates's personal configs
./set_up_git_templates.sh

