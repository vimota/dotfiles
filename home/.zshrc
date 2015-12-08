# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="miloshadzic"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew rvm osxsubl git-flow)

source $ZSH/oh-my-zsh.sh

# Disable the annoying autocorrect feature
# Must come after sourcing oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs...
export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/X11/bin:/usr/local/share/npm/bin/
export PATH=$PATH:/usr/local/share/python

export PYTHONPATH="${PYTHONPATH}:/Users/vimota/code/godel.io/app"

# Virtualenv  and Virtualenvwrappe
export WORKON_HOME=$HOME/.virtualenvs
#source /usr/local/bin/virtualenvwrapper.sh


#
# Time saving functions/aliases
#

alias ll="ls -lA"
alias gitlogp="git log --pretty=oneline"
alias chrome-with-proxy="open /Applications/Google\ Chrome.app --args --js-flags=\"--harmony-proxies\""
alias killdj="sudo kill $(ps aux | grep 'bin/django runserver' | awk '{print $2}')"

alias hosts="subl /etc/hosts"

alias octave="/Applications/Octave.app/Contents/Resources/bin/octave"
alias brew-home="cd $( brew --prefix )"
alias mongo-start="nohup mongod &> /tmp/nohup.out &"
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=$HOME/.cabal/bin:$PATH
export VISUAL=/usr/local/bin/subl
export EDITOR=/usr/local/bin/subl

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
