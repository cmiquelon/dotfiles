# dotfiles source control
alias dotfiles='/usr/bin/git --git-dir=/Users/charles/.dotfiles/ --work-tree=/Users/charles'

# use GNU instead of BSD
for bindir in /usr/local/opt/***/gnubin; export PATH=$bindir:$PATH;
