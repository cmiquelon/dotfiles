#!/bin/sh

# avoid recursion
echo ".dotfiles" >> .gitignore

# clone repo
git clone --bare https://github.com/cmiquelon/dotfiles.git $HOME/.dotfiles

#create alias
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# checkout
dotfiles checkout -f

# avoid showing everthing in $HOME with git status
dotfiles config --local status.showUntrackedFiles no

# intall homebrew
type brew || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# activate submodules
dotfiles submodule init
dotfiles submodule update

# macos settings
defaults write

# avoid zsh compinit warning
chmod -R go-w "$(brew --prefix)/share"
