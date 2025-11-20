# ZSH Config
DISABLE_AUTO_UPDATE="true"
DISABLE_MAGIC_FUNCTIONS="true"
ZSH_DISABLE_COMPFIX="true"
DISABLE_COMPINIT=true
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="miloshadzic"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}%{%G⚡}%{$reset_color%}"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HYPHEN_INSENSITIVE="true"
HIST_STAMPS="yyyy-mm-dd"
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
plugins=(git tmux autojump )
source $ZSH/oh-my-zsh.sh
# Disable the annoying autocorrect feature
# # Must come after sourcing oh-my-zsh.sh
unsetopt correct_all


# Customize to your needs...
export PATH=~/bin:/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/X11/bin:/usr/local/share/npm/bin/
export PATH=~/.npm-global/bin:$PATH
export PATH=$PATH:/usr/local/lib/ruby/gems/2.6.0/bin:/usr/local/share/dotnet
export WORKON_HOME=$HOME/.virtualenvs
alias python=python3.11
# Sqlite
export PATH=/usr/local/opt/sqlite/bin:$PATH
export PATH=/usr/local/opt/openjdk@11/bin:$PATH

# Time saving functions/aliases
#
function gitacp() {
    git add -A && git commit -m "$1" && git push
  }
alias gp="gitacp"
alias ll="ls -lA"
alias gitlogp="git log --pretty=oneline"
git config --global alias.ac '!git add -A && git commit'
alias hosts="vim /etc/hosts"
alias brew-home="cd $( brew --prefix )"
alias v="vim"
# User configuration
export EDITOR='vim'
export SSH_KEY_PATH="~/.ssh/rsa_id"
export TERM=xterm-256color

# Bun
export BUN_INSTALL="/Users/vimota/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# Created by `pipx` on 2024-06-04 20:04:25
export PATH="$PATH:/Users/vimota/.local/bin"

# Smart compinit caching for faster startup
fpath+=~/.zfunc
autoload -Uz compinit
if [ "$(date +'%j')" != "$(stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)" ]; then
    compinit
else
   compinit -C
fi
zstyle ':completion:*' menu select
# Source Rust / Cargo env
. "$HOME/.cargo/env"

# pnpm
export PNPM_HOME="/Users/vimota/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
alias claude="/Users/vimota/.claude/local/claude"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
export FZF_DEFAULT_COMMAND='rg --files --hidden'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# ripgrep->fzf->vim [QUERY]
rfv() (
  RELOAD='reload:rg --column --color=always --smart-case {q} || :'
  OPENER='if [[ $FZF_SELECT_COUNT -eq 0 ]]; then
            vim {1} +{2}     # No selection. Open the current line in Vim.
          else
            vim +cw -q {+f}  # Build quickfix list for the selected items.
          fi'
  fzf --disabled --ansi --multi \
      --bind "start:$RELOAD" --bind "change:$RELOAD" \
      --bind "enter:become:$OPENER" \
      --bind "ctrl-o:execute:$OPENER" \
      --bind 'alt-a:select-all,alt-d:deselect-all,ctrl-/:toggle-preview' \
      --delimiter : \
      --preview 'bat --theme auto:system --style=full --color=always --highlight-line {2} {1}' \
      --preview-window '~4,+{2}+4/3,<80(up)' \
      --query "$*"
)
alias cs="rfv" # code search
# Add viomta/utils to PATH
export PATH="$PATH:/Users/vimota/code/utils"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/vimota/.cache/lm-studio/bin"
# End of LM Studio CLI section

