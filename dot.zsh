#!/usr/bin/env zsh

alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# avoid showing everthing in $HOME with git status
dotfiles config --local status.showUntrackedFiles no

# intall homebrew
type brew || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# activate submodules
dotfiles submodule init
dotfiles submodule update

# avoid zsh compinit warning
chmod -R go-w "$(brew --prefix)/share"

# install dependencies
brew bundle -v

# install prompt
npm install --global pure-prompt

# load zsh config
source .zshrc

# login to github
gh auth login --with-token < .ghtoken.txt
