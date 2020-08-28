#!/bin/sh

dotfiles_dir="$(dirname "$(pwd)")"
back_up_dir="${dotfiles_dir}/back_up_dir"

if [[ ! -e "${back_up_dir}" ]]; then
	mkdir "${back_up_dir}"
	echo "Backup directory created: ${back_up_dir}"
fi
