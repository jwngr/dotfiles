# basic system
umask 027
export EDITOR='vim'
export LESS='--no-init --quit-if-one-screen -r'
export PAGER='less'
set -o noclobber
  
# command prompt (include current git branch)
get_git_branch() {
    git branch 2> /dev/null | awk '{ if(NF==2 && $1=="*") { print ":" $2; } }'
}
export GIT_EDITOR='vim'
export PS1='\u@\h:\w\[\033[00;33m\]$(get_git_branch)\[\033[00m\]> '
       
# command line history
export HISTTIMEFORMAT='%F %T'
export HISTSIZE=10000000
export HISTFILESIZE=10000000
        
# search history using the up and down arrows.
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
         
# tab complete
set autolist
set show-all-if-ambiguous on
set completion-ignore-case on
export PATH=$PATH:~/bin
export MACH_TYPE=x86_64
          
# define aliases in a separate file
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
