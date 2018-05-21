## This repository contains the files necessary to implement my terminal and vim preferences on a Unix based system

# Present procedure to follow:
1) Make a backup of your dotfiles, e.g.
```
mkdir ~/dotfiles_backup
cp ~/.[a-z]* ~ 		# copy all dotfiles to the new directory

2) Clone the repository in a local folder, for example in ~/.dotfiles
```
git clone https://github.com/jonathan-doenz/jon-dotfiles ~/.dotfiles/
```
3) Copy all the dotfiles in home (~) folder
```
cp ~/.dotfiles/.[a-z]\* ~
```
4) Source the fresh .bash_profile file
```
source ~/bash\_profile
```

# In the future I would prefer to have it implemented this way:
Follow these steps to get my preferences on your computer.

- Clone the repository in a folder, for example ~/.dotfiles
```
git clone https://github.com/jonathan-doenz/jon-dotfiles ~/.dotfiles/
```
- Run the linking.sh script:
```
./~/.linking.sh
```
