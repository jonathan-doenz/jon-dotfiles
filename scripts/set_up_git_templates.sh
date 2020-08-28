#!/bin/sh

# Get the dotfiles directory
dotfiles_dir="$(dirname "$(pwd)")"
git_template_jon_dir=${dotfiles_dir}/.git_template
# git_template_jon_dir=${HOME}/jon-dotfiles/.git_template

# if ~/jon-dotfiles/.git_template exists:
if [[ -e "$git_template_jon_dir" ]]; then

	# initialize git global template directory
	git config --global init.templatedir '~/.git_template'
	
	git_template_home_dir=${HOME}/.git_template

	# backup directory if it exists already
	back_up_dir=${HOME}/jon-dotfiles/back_up_dir
	# if back_up_dir does not exist, create it
	[ ! -e "$back_up_dir" ] && mkdir "$back_up_dir"

	# if directory ~/.git_template exists
	# move it to the back_up_dir
	if [[ -e "$git_template_home_dir" ]]; then
		mv "$git_template_home_dir" "$back_up_dir"
	fi

	# symlink the .git_template directory
	ln -s "$git_template_jon_dir" "$git_template_home_dir"
fi
