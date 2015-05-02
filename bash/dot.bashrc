#####################
#  SYSTEM SETTINGS  #
#####################
export EDITOR='vim'
export LESS='--no-init --quit-if-one-screen -r'
export PAGER='less'
export GIT_EDITOR='vim'
set -o noclobber


####################
#  HELPER METHODS  #
####################
# Fast search
function grepf() {
  find . -type f \
    ! -path '*.git/*' \
    -a ! -path '*/node_modules*' \
    -a ! -path '*/bower_components*' \
    -a ! -iname '*.pdf' \
    -a ! -iname '*.gif' \
    -a ! -iname '*.jpg' \
    -a ! -iname '*.jpeg' \
    -a ! -iname '*.class' \
    -a ! -iname '*.zip' \
    -a ! -iname '*.png' -print0 | \
  xargs -0 -P 100 /usr/bin/grep --color=always "$@" | cut -c 1-200 | sed -e $'s/\(^[^:]*\)/\e[35m\\1\e[0m/1'
}

# Local server
function serve() {
  local port="${1:-8000}"
  /usr/bin/env python -m SimpleHTTPServer "$port"
}

# Name current tab
function nametab() {
  echo -ne "\033]0;"$@"\007"
}


##################
#  COMMAND LINE  #
##################
# git prompt script to get current git branch (http://code-worrier.com/blog/git-branch-in-bash-prompt/)
source ~/.git-prompt.sh

# git auto-complete (http://code-worrier.com/blog/autocomplete-git)
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Custom command prompt
export PS1="[\A \w]\$(__git_ps1) $ "

# ls colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Command line history
export HISTTIMEFORMAT='%F %T'
export HISTSIZE=10000000
export HISTFILESIZE=10000000

# Search history using the up and down arrows
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Tab auto-complete
set autolist
set show-all-if-ambiguous on
set completion-ignore-case on

# Auto-completions
if [ -f "/usr/local/etc/bash_completion" ]; then
    . "/usr/local/etc/bash_completion"
fi
if [ -f "/etc/bash_completion.d/git" ]; then
    . "/etc/bash_completion.d/git"
fi


#############
#  ALIASES  #
#############
# calculator
alias bc='bc -ql'

# force cat to display special characters
alias c='cat -v'
alias cat='cat -v'

# abbreviations for common commands
alias g='grep'
alias h='head'
alias t='tail'
alias ..='cd ..'
alias l='ls -lrtahp'
alias vi='vim'

# trash (rm replacement; https://github.com/sindresorhus/trash)
alias t=trash
alias rm='rm -i'

# forward X11
alias ssh='ssh -Y'

# python
#alias python='python3'
#alias ipython='ipython3'
#alias py='ipython --pylab'


#########################
#  DIRECTORY SHORTCUTS  #
#########################
alias dev='cd ~/dev/'
alias desktop='cd ~/Desktop/'
alias downloads='cd ~/Downloads/'

alias web='cd ~/dev/firebase-website/'
alias admin='cd ~/dev/firebase-admin/'
alias login='cd ~/dev/firebase-backend-simple-login/'
alias hosting='cd ~/dev/firebase-hosting/'
alias hosting-admin='cd ~/dev/firebase-hosting-admin/'

alias nd='cd ~/dev/notreda.me/'
alias rc='cd ~/dev/rusticcitrus/'
alias blog='cd ~/dev/blog/'
alias seer='cd ~/dev/seer/'
alias sdow='cd ~/dev/sdow/'
alias sodano='cd ~/dev/sodano/'
alias ttttt='cd ~/dev/tic-tac-tic-tac-toe/'


###################
#  MISCELLANEOUS  #
###################
# Path and machine type
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

# Mount AFS home dir, AFS group evodevo, and /cluster via SSHFS
mount_lab() {
  # Mac OS X
  if [ -d "/Volumes" ]; then
    mkdir -p /Volumes/ttn-afs-awenger
    mkdir -p /Volumes/ttn-afs-evodevo
    mkdir -p /Volumes/ttn-cluster
    sshfs ttn:/afs/cs/u/awenger /Volumes/ttn-afs-awenger
    sshfs ttn:/afs/cs/group/evodevo /Volumes/ttn-afs-evodevo
    sshfs ttn:/cluster /Volumes/ttn-cluster
  # Linux
  else
    sshfs ttn:/afs/cs/u/awenger /mnt/ttn-afs/cs/u/awenger
    sshfs ttn:/afs/cs/group/evodevo /mnt/ttn-afs/cs/group/evodevo
    sshfs ttn:/cluster /mnt/ttn-cluster
  fi
}
