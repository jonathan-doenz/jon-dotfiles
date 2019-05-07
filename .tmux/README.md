# Tmux plugins synchronization
This directory contains my tmux plugins. The following procedure symlinks them with their default location (`~/.tmux`). It is especially convenient to have this directory on any machine because it is responsible for the ability to restore `tmux` sessions using the `Resurrect` plugin.

## Procedure to follow:
You need to have already proceeded with the steps from the main repo, i.e. cloned the `jon-dotfiles` repo on your machine and ran the script `dotfiles_syncker.sh`. If this is not the case, do it and come back to proceed with the next steps.
1) Make a backup of your `~/.tmux` default directory and remove it from your home directory
```
mkdir -p ~/dotfiles_backup/.tmux
cp -r ~/.tmux ~/dotfiles_backup/
rm -r ~/.tmux
```

3) Create a symlink between the present directories (`.../jon-dotfiles/.tmux`; _source_) and the `.tmux` default directory (_target_). We must provide the absolute paths for both directories, so in the following statement I assume the `jon-dotfiles` repository  is located in the home directory (`~`). If you have it located in a different directory, change the path preceding `/jon-dotfiles/` to yours.
```
ln -sf ${HOME}/jon-dotfiles/.tmux ${HOME}/.tmux
```
