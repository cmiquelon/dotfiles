# dotfiles source control
alias dotfiles='git --git-dir=/Users/charles/.dotfiles/ --work-tree=/Users/charles'
alias dot=dotfiles

# path
PATH="/Applications/Wireshark.app/Contents/MacOS/:$HOME/.cargo/bin:/usr/local/opt/llvm/bin:$PATH"
PATH="/usr/local/bin:$HOME/.emacs.d/bin:/usr/local/opt/sqlite/bin:$PATH"
export PATH

# functions
for file in $HOME/.functions/*; do
  source "$file"
done

# pure prompt
autoload -U promptinit
promptinit
prompt pure

# zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# auto-completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# bat
export BAT_THEME="Sublime Snazzy"

# fasd
eval "$(fasd --init auto)"

# colors
export TERM=xterm-256color
