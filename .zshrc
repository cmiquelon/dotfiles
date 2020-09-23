# dotfiles source control
alias dotfiles='/usr/bin/git --git-dir=/Users/charles/.dotfiles/ --work-tree=/Users/charles'
alias dot=dotfiles

# use GNU instead of BSD
# for bindir in /usr/local/opt/***/gnubin; export PATH=$bindir:$PATH;
#

# path
export PATH="$HOME/bin:/usr/local/bin:$HOME/.emacs.d/bin:$HOME/.cargo/bin:$PATH"

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

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# auto-completion
autoload -U compinit
compinit

# zsh-syntax-highlighting
# KEEP AT THE END
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/usr/local/opt/llvm/bin:$PATH"
