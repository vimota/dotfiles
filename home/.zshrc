# ZSH Config 
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HYPHEN_INSENSITIVE="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git docker kubectl node npm python tmux)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/X11/bin:/usr/local/share/npm/bin/
export PATH=$PATH:/usr/local/share/python

# Virtualenv and Virtualenvwrappe
export WORKON_HOME=$HOME/.virtualenvs

#
# Time saving functions/aliases
#

alias ll="ls -lA"
alias gitlogp="git log --pretty=oneline"
alias hosts="subl /etc/hosts"
alias brew-home="cd $( brew --prefix )"

# User configuration
export EDITOR='vim'
export SSH_KEY_PATH="~/.ssh/rsa_id"
export TERM=xterm-256color
