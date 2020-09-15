# dotfiles source control
alias dotfiles='/usr/bin/git --git-dir=/Users/charles/.dotfiles/ --work-tree=/Users/charles'

# use GNU instead of BSD
export GNUBINS="$(find /usr/local/opt -type d -follow -name gnubin -print)";

for bindir in ${GNUBINS[@]}; do
  export PATH=$bindir:$PATH;
done;
