#!/bin/bash

# Go inside the local repository and pull the latest version of dotfiles directory
THIS_DIR="$(dirname "${BASH_SOURCE}")";
cd $THIS_DIR
#cd ~/.dotfiles/;
git pull origin master;

# Link all dotfiles to the standard home path ~
ln -sv $THIS_DIR/.bash_profile ~;
ln -sv $THIS_DIR/.bashrc ~;
ln -sv $THIS_DIR/.bash_prompt ~;
ln -sv $THIS_DIR/.aliases ~;
ln -sv $THIS_DIR/.exports ~;
ln -sv $THIS_DIR/.functions ~;
ln -sv $THIS_DIR/.path ~;
ln -sv $THIS_DIR/.vimrc ~;

# Source all the files
source ~/.bashrc;
