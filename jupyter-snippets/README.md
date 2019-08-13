# Jupyter-snippets synchronization
This directory contains the file with my jupyter notebook's snippets. The following procedure symlinks it with its default location (`~/Library/Jupyter/nbextensions/snippets/snippets.json`). This allows editing only once the snippets' file for the change to happen on all machines in sync with the present repository.

## Procedure to follow:

1) Make a backup of your jupyter-snippets' default file if it exists, then delete the file from the default location
```
mkdir -p ~/dotfiles_backup/jupyter-snippets
cp -r ~/Library/Jupyter/nbextensions/snippets/snippets.json ~/dotfiles_backup/jupyter-snippets/
rm -r ~/Library/Jupyter/nbextensions/snippets/snippets.json
```

2) Create a symlink between the present snippets' file (`.../jon-dotfiles/jupyter-snippets/snippets.json`; _source_) and the `jupyter-snippets` default file (_target_). We must provide the absolute paths for both files, so in the following statement I assume the `jon-dotfiles` repository  is located in the home directory (`~`). If you have it located in a different directory, change the path preceding `/jon-dotfiles/` to yours.
```
ln -sf ${HOME}/jon-dotfiles/jupyter-snippets/snippets.json ${HOME}/Library/Jupyter/nbextensions/snippets/snippets.json
```
