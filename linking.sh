#!/bin/bash

# Link all dotfiles to the standard home path ~
ln -sv ~/.dotfiles/.bash_profile ~
ln -sv ~/.dotfiles/.bashrc ~
ln -sv ~/.dotfiles/.bash_prompt ~
ln -sv ~/.dotfiles/.aliases ~
ln -sv ~/.dotfiles/.exports ~
ln -sv ~/.dotfiles/.functions ~
ln -sv ~/.dotfiles/.path ~

# Source all the files
source ~/.bashrc
