#!/bin/bash

# Go inside the local repository and pull the latest version of dotfiles directory
THIS_DIR="$(dirname "${BASH_SOURCE}")";
#THIS_DIR="~/.dotfiles";
cd $THIS_DIR
#cd ~/.dotfiles/;
git pull origin master;

# Link all dotfiles to the standard home path ~
ln -sv $THIS_DIR/.bash_profile ~/.bash_profile;
ln -sv $THIS_DIR/.bashrc ~/.bashrc ;
ln -sv $THIS_DIR/.bash_prompt ~/.bash_prompt ;
ln -sv $THIS_DIR/.aliases ~/.aliases ;
ln -sv $THIS_DIR/.exports ~/.exports ;
ln -sv $THIS_DIR/.functions ~/.functions ;
ln -sv $THIS_DIR/.path ~/.path ;
ln -sv $THIS_DIR/.vimrc ~/.vimrc ;

# Source all the files
source ~/.bash_profile;
