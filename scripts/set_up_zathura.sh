#!/bin/sh

# Get the dotfiles directory
dotfiles_dir="$(dirname "$(pwd)")"
file=${dotfiles_dir}/zathurarc
# file=${HOME}/jon-dotfiles/zathurarc

# if file ~/jon-dotfiles/zathurarc exists:
if [ -e "$file" ] ; then
	# echo "File zathurarc exists"
	dir="$HOME/.config/zathura"

	# if directory ~/.config/zathura does not exist:
	if [ ! -e "$dir" ] ; then
		    # echo "Directory ${dir} does not exist"
		    mkdir -p "$dir"
		    echo "Directory ${dir} created"
	fi

	ln -sf $file "$dir/zathurarc"
	echo "Symlink created for file ${dir}/zathurarc"
	# [ -f "$file" ] && ln -sf $file "$dir/zathurarc"
fi
