#!/usr/bin/env zsh

dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# avoid showing everthing in $HOME with git status
dotfiles config --local status.showUntrackedFiles no

# intall homebrew
type brew || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# activate submodules
dotfiles submodule init
dotfiles submodule update

# avoid zsh compinit warning
chmod -R go-w "$(brew --prefix)/share"

# source .zshrc
source .zshrc
