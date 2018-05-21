#!/bin/bash

## Go inside the local repository and pull the latest version of dotfiles directory
#THIS_DIR="$(dirname "${BASH_SOURCE}")";
#cd $THIS_DIR
##cd ~/.dotfiles/;
#git pull origin master;
#
# Unlink all dotfiles to the standard home path ~
unlink -v ~/.bash_profile;
unlink -v ~/.bashrc;
unlink -v ~/.bash_prompt;
unlink -v ~/.aliases;
unlink -v ~/.exports;
unlink -v ~/.functions;
unlink -v ~/.path;
unlink -v ~/.vimrc;

## Source all the files
#source ~/.bashrc;
