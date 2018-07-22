# Vim-snippets synchronization
This directory contains my vim snippets. The following procedure symlinks them with their default location (`~/.vim/bundle/vim-snippets/`). This allows editing only once a snippets' file for the change to happen on all machines in sync with the present repository.

## Procedure to follow:
You need to have already proceeded with the steps from the main repo, i.e. cloned the `jon-dotfiles` repo on your machine and ran the script `dotfiles_syncker.sh`. If this is not the case, do it and come back to proceed with the next steps.
1) Open your `~/.vimrc` file with vim and run the following command from normal mode:
```
:PluginInstall
```
This will clone the repositories of the vim plugins present in the `.vimrc`.

2) Make a backup of your vim-snippets' default directory and remove the `snippets` and `UltiSnips` default subdirectories
```
mkdir -p ~/dotfiles_backup/vim-snippets
cp -r ~/.vim/bundle/vim-snippets/snippets ~/dotfiles_backup/vim-snippets
cp -r ~/.vim/bundle/vim-snippets/UltiSnips ~/dotfiles_backup/vim-snippets
rm -r ~/.vim/bundle/vim-snippets/snippets
rm -r ~/.vim/bundle/vim-snippets/UltiSnips
```

3) Create a symlink between the present directories (`.../jon-dotfiles/vim-snippets/snippets` and `.../jon-dotfiles/vim-snippets/UltiSnips`; _source_) and the `vim-snippets` default directories (_target_). We must provide the absolute paths for both directories, so in the following statement I assume the `jon-dotfiles` repository  is located in the home directory (`~`). If you have it located in a different directory, change the path preceding `/jon-dotfiles/` to yours.
```
ln -sf ${HOME}/jon-dotfiles/vim-snippets/snippets ${HOME}/.vim/bundle/vim-snippets/snippets
ln -sf ${HOME}/jon-dotfiles/vim-snippets/UltiSnips ${HOME}/.vim/bundle/vim-snippets/UltiSnips
```
