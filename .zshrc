# dotfiles source control
alias dotfiles='/usr/bin/git --git-dir=/Users/charles/.dotfiles/ --work-tree=/Users/charles'
alias dot=dotfiles

# use GNU instead of BSD
for bindir in /usr/local/opt/***/gnubin; export PATH=$bindir:$PATH;

# use homebrewed tools
export PATH="/usr/local/bin:$PATH"

# add doom to path
export PATH="$HOME/.emacs.d/bin:$PATH"

# functions
source $HOME/.functions/*

# pure prompt
autoload -U promptinit; promptinit
prompt pure

# zsh-syntax-highlighting
# KEEP AT THE END
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
