#!/bin/bash

## Go inside the local repository and pull the latest version of dotfiles directory
#THIS_DIR="$(dirname "${BASH_SOURCE}")";
#cd $THIS_DIR
##cd ~/.dotfiles/;
#git pull origin master;
#
# Unlink all dotfiles to the standard home path ~
rm -v ~/.bash_profile;
rm -v ~/.bashrc;
rm -v ~/.bash_prompt;
rm -v ~/.aliases;
rm -v ~/.exports;
rm -v ~/.functions;
rm -v ~/.path;
rm -v ~/.vimrc;

## Source all the files
#source ~/.bashrc;
