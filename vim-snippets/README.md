# This directory contains my vim snippets. The procedure that follows will symlink them to their default location (when you install the plugin vim-snippets). This will allow an edit to happen on all machines in sync with the repository at once

## Procedure to follow:
We assume that you have already proceeded with the steps from the main repo, i.e. cloned the `jon-dotfiles` repo on your machine and ran the script `dotfiles_syncker.sh`.
1) Open your `~/.vimrc` file and run the following command from the normal mode:
```
:PluginInstall
```
This will clone the repositories of the vim plugins present in the `.vimrc`.

2) Make a backup of your vim-snippets folder and remove the `snippets` and `UltiSnips` subdirectories
```
mkdir -p ~/dotfiles_backup/vim-snippets
cp -r ~/.vim/bundle/vim-snippets/snippets ~/dotfiles_backup
cp -r ~/.vim/bundle/vim-snippets/UltiSnips ~/dotfiles_backup
rm -r ~/.vim/bundle/vim-snippets/snippets
rm -r ~/.vim/bundle/vim-snippets/UltiSnips
```

3) Create a symlink between the present directories (source) and the `vim-snippets` directories (target). We assume we are in the present directory (`yourPath/jon-dotfiles/vim-snippets`) to type the following commands
```
ln -sf ./snippets ~/.vim/bundle/vim-snippets/snippets
ln -sf ./UltiSnips ~/.vim/bundle/vim-snippets/UltiSnips
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
