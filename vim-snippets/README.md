# Vim-snippets synchronization
This directory contains my vim snippets. The procedure that follows symlinks them with their default location (`~/.vim/bundle/vim-snippets`). This allows editing only once a snippets file for the change to happen on all machines in sync with the present repository.

## Procedure to follow:
You need to have already proceeded with the steps from the main repo, i.e. cloned the `jon-dotfiles` repo on your machine and ran the script `dotfiles_syncker.sh`. If this is not the case, do it and come back to proceed with the next steps.
1) Open your `~/.vimrc` file and run the following command from the normal mode:
```
:PluginInstall
```
This will clone the repositories of the vim plugins present in the `.vimrc`.

2) Make a backup of your vim-snippets folder and remove the `snippets` and `UltiSnips` subdirectories
```
mkdir -p ~/dotfiles_backup/vim-snippets
cp -r ~/.vim/bundle/vim-snippets/snippets ~/dotfiles_backup/vim-snippets
cp -r ~/.vim/bundle/vim-snippets/UltiSnips ~/dotfiles_backup/vim-snippets
rm -r ~/.vim/bundle/vim-snippets/snippets
rm -r ~/.vim/bundle/vim-snippets/UltiSnips
```

3) Create a symlink between the present directories (source) and the `vim-snippets` directories (target). We must provide the absolute paths to both directories, so in the following statement I assume the `jon-dotfiles` repository  is located in the home directory (`~`). If you have it located in a different directory, change the path preceding `/jon-dotfiles/...` to yours.
```
ln -sf ${HOME}/jon-dotfiles/vim-snippets/snippets ${HOME}/.vim/bundle/vim-snippets/snippets
ln -sf ${HOME}/jon-dotfiles/vim-snippets/UltiSnips ${HOME}/.vim/bundle/vim-snippets/UltiSnips
```
