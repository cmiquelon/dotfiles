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

ln -s /usr/local/opt/emacs-plus@27/Emacs.app /Applications

# install prompt
/usr/local/bin/npm install --global pure-prompt

# load zsh config
source .zshrc

# login to github
gh auth login --with-token < ghtoken.txt

# install doom emacs
doom install

# macos setup
defaults write com.apple.dock autohide -bool true

# rectangle setup
defaults write com.knollsoft.Rectangle gapSize -float 10
defaults write com.knollsoft.Rectangle snapEdgeMarginTop -int 10
defaults write com.knollsoft.Rectangle snapEdgeMarginBottom -int 10
defaults write com.knollsoft.Rectangle snapEdgeMarginLeft -int 10
defaults write com.knollsoft.Rectangle snapEdgeMarginRight -int 10
defaults read-type com.knollsoft.Rectangle launchOnLogin -bool true

# postgresql
creatuser postgres

# yabai
sudo yabai --install-sa
brew services start yabai
killall Dock

# skhd
brew services start skhd


# rust
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
