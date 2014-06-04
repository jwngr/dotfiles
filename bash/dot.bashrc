# basic system
export EDITOR='vim'
export LESS='--no-init --quit-if-one-screen -r'
export PAGER='less'
set -o noclobber

get_git_branch() {
    git branch 2> /dev/null | awk '{ if(NF==2 && $1=="*") { print ":" $2; } }'
}

# interactive shell?
if [ "$PS1" ]; then
    # command prompt (include current git branch)
    export PS1='\u@\[\033[00;33m\]\h\[\033[00m\]:\w\[\033[00;36m\]$(get_git_branch)\[\033[00m\]> '

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

    # auto-complete
    if [ -f "/usr/local/etc/bash_completion" ]; then
        . "/usr/local/etc/bash_completion"
    fi
fi

export GIT_EDITOR='vim'

# path and machine type
export MACH_TYPE=x86_64
export MACHTYPE=${MACH_TYPE}
if [ ! -d "${HOME}/bin/${MACHTYPE}" ]; then
    mkdir -p "${HOME}/bin/${MACHTYPE}"
fi
export PATH=/usr/local/bin:$PATH:~/bin:~/bin/${MACHTYPE}

# Grab GNU-style utilities on Mac OS X
if [ -d "/usr/local/opt/coreutils/libexec/gnubin" ]; then
    export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
fi
if [ -d "/usr/local/opt/coreutils/libexec/gnuman" ]; then
    export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi

# mount AFS home dir, AFS group evodevo, and /cluster via SSHFS
mount_lab() {
    sshfs ttn:/afs/cs/u/awenger /mnt/ttn-afs/cs/u/awenger
    sshfs ttn:/afs/cs/group/evodevo /mnt/ttn-afs/cs/group/evodevo
    sshfs ttn:/cluster /mnt/ttn-cluster
}


### Alias definitions
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
alias ls='ls --color=auto'
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

# python
alias python='python3'
alias ipython='ipython3'

if hash nosetests-3.3 2>/dev/null; then
    alias nosetests='nosetests-3.3 -v'
else
    alias nosetests='nosetests3 -v'
fi
alias py='ipython --pylab'

# Aspera (fast downloading)
alias ascp='~/.aspera/connect/bin/ascp -i ~/.aspera/connect/etc/asperaweb_id_dsa.openssh'
