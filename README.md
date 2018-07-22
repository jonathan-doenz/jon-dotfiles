# This repository contains the files necessary to implement my terminal and vim preferences on a Unix based system

## Procedure to follow:
1) Make a backup of your dotfiles, e.g.
```
mkdir ~/dotfiles_backup
cp ~/.[a-z]* ~/dotfiles_backup 	# copy all dotfiles to the new directory
```

2) If some of the dotfolders included in the present repo (.jupyter, .R) already exist in your home folder, you need to delete them
```
rm -r ~/.jupyter
rm -r ~/.R
```

3) Clone the repository in a local folder, for example in the home folder ~
```
git clone https://github.com/jonathan-doenz/jon-dotfiles ~
```

4) Run the dotfiles_syncker.sh script
```
~/jon-dotfiles/dotfiles_syncker.sh 	# this replaces the dotfiles in home folder with a symlink to the files in ~/jon-dotfiles repository
```

5) Source the fresh .bash_profile file for the preferences to take place and you are good to go!
```
source ~/.bash_profile
```
