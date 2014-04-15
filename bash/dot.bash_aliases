# calculator
alias bc='bc -ql'
 
# force cat to display special characters
alias c='cat -v'
alias cat='cat -v'
 
# cat-like command that adds a "filename:" prefix to each line
alias ca='grep ^'
 
# abbreviations for common commands
alias g='grep'
alias h='head'
alias t='tail'
alias ..='cd ..'
alias l='ls -lrtahp'
alias og='ls -ogrtAh'
alias vi='vim'
 
# debugging
alias vg='valgrind --leak-check=full --show-reachable=yes'
 
alias hg='history | egrep !*'
alias imcat='montage -tile 1x -geometry +2+2'
 
# git aliases
alias b='git branch -a'
alias prune='git remote prune origin'

# directory navigation
alias cl='cd /cluster/u/$USER'
