#!/usr/bin/env bash

# command line utils
brew cask install iterm2
brew install tmux
brew install ctags
brew install tree
brew install grep
brew install fzf
brew install cmake
brew install grip
brew install moreutils
brew install ack

# zsh specific
brew install lf
brew install zsh-syntax-highlighting

# statistics software
brew cask install rstudio

# internet browsing
brew cask install firefox
brew cask install google-chrome
brew cask install qutebrowser

# academic writing
brew cask install mactex

# academic reading
brew cask install mendeley

# pdf viewer
brew cask install skim
brew tap zegervdv/zathura
brew install zathura
brew install zathura-pdf-poppler
mkdir -p $(brew --prefix zathura)/lib/zathura
ln -s $(brew --prefix zathura-pdf-poppler)/libpdf-poppler.dylib $(brew --prefix zathura)/lib/zathura/libpdf-poppler.dylib

# workflow
brew cask install shiftit

# cloud sync
brew cask install google-backup-and-sync

# communication
brew cask install whatsapp
brew cask install slack
brew cask install discord
brew cask install skype

# multimedia
brew cask install gimp
brew tap homebrew/cask
brew cask install inkscape
brew cask install vlc
brew cask install kindle

# virtual environment
brew cask install virtualbox

# reproducibility
brew cask install docker
