# ZSH Config
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="miloshadzic"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}%{%G⚡}%{$reset_color%}"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HYPHEN_INSENSITIVE="true"
HIST_STAMPS="yyyy-mm-dd"
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
plugins=(git zsh-nvm node npm python tmux autojump )
source $ZSH/oh-my-zsh.sh
# Disable the annoying autocorrect feature
# # Must come after sourcing oh-my-zsh.sh
unsetopt correct_all


# Customize to your needs...
export PATH=~/bin:/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/X11/bin:/usr/local/share/npm/bin/
export PATH=$PATH:/usr/local/lib/ruby/gems/2.6.0/bin:/usr/local/share/dotnet
export PATH=$PATH:/opt/homebrew/bin
export WORKON_HOME=$HOME/.virtualenvs
# Sqlite
export PATH=/usr/local/opt/sqlite/bin:$PATH
export PATH=/usr/local/opt/openjdk@11/bin:$PATH

# Time saving functions/aliases
#

alias ll="ls -lA"
alias gitlogp="git log --pretty=oneline"
alias hosts="vim /etc/hosts"
alias brew-home="cd $( brew --prefix )"
alias v="vim"
# User configuration
export EDITOR='vim'
export SSH_KEY_PATH="~/.ssh/rsa_id"
export TERM=xterm-256color

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vimota/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/vimota/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/vimota/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/vimota/google-cloud-sdk/completion.zsh.inc'; fi

# bun completions
[ -s "/Users/vimota/.bun/_bun" ] && source "/Users/vimota/.bun/_bun"

# Bun
export BUN_INSTALL="/Users/vimota/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
