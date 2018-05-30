# This repository contains the files necessary to implement my terminal and vim preferences on a Unix based system

## Procedure to follow:
1) Make a backup of your dotfiles, e.g.
```
mkdir ~/dotfiles_backup
cp ~/.[a-z]* ~/dotfiles_backup 	# copy all dotfiles to the new directory
```

2) Clone the repository in a local folder, for example in the home folder ~
```
git clone https://github.com/jonathan-doenz/jon-dotfiles ~
```

3) Run the dotfiles_syncker.sh script
```
./~/jon-dotfiles/dotfiles_syncker.sh 	# this replaces the dotfiles in home folder with a symlink to the files in ~/jon-dotfiles repository
```

4) Source the fresh .bash_profile file
```
source ~/.bash_profile
```
