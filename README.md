# dotfiles
My dotfiles, kept in a git bare repository, as explained in this tutorial: https://www.atlassian.com/git/tutorials/dotfiles.

## Install
```sh
echo ".dotfiles" >> .gitignore
git clone --bare https://github.com/cmiquelon/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout -f
./dot.zsh
```

## Keep up to date
```sh
dotfiles status
dotfiles add .zshrc
dotfiles commit -m "Add .zshrc"
dotfiles push
```
`dot` is an alias for `dotfiles`.
