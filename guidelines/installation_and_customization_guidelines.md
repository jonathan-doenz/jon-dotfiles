# Guidelines for manual installations and customizations

This is a step by step guide for the annoying manual installations.

# Get Zsh, ohmyzsh with my customizations

The steps can be followed here: 
https://www.youtube.com/watch?v=pTW02GMeI74

- Install ohmyzsh. Just copy paste the following in the terminal:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- Backup and rename/remove the `.zshrc` file produced by ohmyzsh
```
mv ${HOME}/.zshrc ${HOME}/.zshrc_ohmyzsh_original
```

- Symlink .zshrc and .zshrc_jon:
```
ln -sf ${HOME}/jon-dotfiles/.zshrc ${HOME}/.zshrc 
ln -sf ${HOME}/jon-dotfiles/.zshrc_jon ${HOME}/.zshrc_jon 
```

- Install powerline fonts
https://github.com/powerline/fonts
```
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```

- Enable font in iterm2: 
-- Go to Preferences > Profiles > Text > Font
-- Choose font names "Source code pro for Powerline"

- Adapt color theme in iterm2:
-- Go to Preferences > Profiles > Colors
-- Choose "Solarized dark"

## Customize prompt from agnoster theme

- Create copy of agnoster theme
```
cd ~/.oh-my-zsh/themes
cp agnoster.zsh-theme agnoster_jon.zsh-theme
```

- Add these lines at the end of function prompt_end (after line 83 as of 2020.08.28):
```
#Adds the new line and ➜ as the start character.
printf "\n ➜";
```


# Iterm2 additional shortcuts

## "command + ;" for cd ..

- Go to: Preferences > Keys
- Click on +
-- Keyboard shortcut: command + ;
-- Action: send text
-- Value to send: cd ..\n

## Ease panes' navigation

- Go to: Preferences > Keys

- Click on +
-- Keyboard shortcut: command + alt + h
-- Action: Select Split Pane on Left

- Click on +
-- Keyboard shortcut: command + alt + l
-- Action: Select Split Pane on Right

- Click on +
-- Keyboard shortcut: command + alt + j
-- Action: Select Split Pane Below

- Click on +
-- Keyboard shortcut: command + alt + k
-- Action: Select Split Pane Above

# Enable tmux to access clipboard

- Go to: Preferences > General > Selection
- Put a tick in the box "Applications in terminal may access clipboard"

# Download tmux' plugins

- Source .tmux.conf
```
source ~/.tmux.conf
```
- Run the following script:
```
~/.tmux/plugins/tpm/bin/install_plugins
```
- Source .tmux.conf again
```
source ~/.tmux.conf
```

# Get vim plugin YouCompleteMe to work

```
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
```

# Add home folder in Finder's sidebar

- Go to: Preferences > Sidebar
- Put a tick in box: "home_name"

# Set up git templates

This is mainly to automatically update ctags in git repositories.

## Prerequisites 
- git must be installed

## Procedure:

- Run script:
```
~/jon-dotfiles/scripts/set_up_git_templates.sh
```

# Set up zathura's config file

- Run script:
```
~/jon-dotfiles/scripts/set_up_git_zathura.sh
```

# Enable compilation of Vimtex

Either download [Latexmk](http://personal.psu.edu/jcc8//software/latexmk-jcc/), or download the full TeXLive distribution.

