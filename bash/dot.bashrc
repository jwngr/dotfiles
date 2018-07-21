#####################
#  SYSTEM SETTINGS  #
#####################
export EDITOR='vim'
export LESS='--no-init --quit-if-one-screen -r'
export PAGER='less'
export GIT_EDITOR='vim'
set -o noclobber


#############
#  ALIASES  #
#############
# force cat to display special characters
alias c='cat -v'
alias cat='cat -v'

# abbreviations for common commands
alias l='ls -lrtahp'
alias vi='vim'

# forward X11
alias ssh='ssh -Y'

# Sublime Text
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# VS Code
function code () {
  if [[ $# = 0 ]]
  then
    open -a "Visual Studio Code"
  else
    [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
    open -a "Visual Studio Code" --args "$F"
  fi
}


####################
#  HELPER METHODS  #
####################
# Fast search
function grepf() {
  find . -type f \
    ! -path '*.git/*' \
    -a ! -path '*/env*' \
    -a ! -path '*/coverage*' \
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
export PS1="[\A]\[\033[36m\] \u:\[\033[m\]\[\033[33;1m\]\w\[\033[32m\]$(__git_ps1) \[\033[m\]$ "

# ls colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

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

# Auto-jump
# https://olivierlacan.com/posts/cd-is-wasting-your-time/
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh


#########################
#  DIRECTORY SHORTCUTS  #
#########################
alias dev='cd ~/dev/'
alias desktop='cd ~/Desktop/'
alias downloads='cd ~/Downloads/'

alias jwngr='cd ~/dev/jwn.gr/'
alias nd='cd ~/dev/notreda.me/'
alias rc='cd ~/dev/rusticcitrus/'
alias seer='cd ~/dev/seer/'
alias sdow='cd ~/dev/sdow/'
alias sodano='cd ~/dev/sodano/'
alias ttt='cd ~/dev/tic-tac-tic-tac-toe/'

###########
#  TOOLS  #
###########
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jwngr/google-cloud-sdk/path.bash.inc' ]; then source '/Users/jwngr/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jwngr/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/jwngr/google-cloud-sdk/completion.bash.inc'; fi

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
