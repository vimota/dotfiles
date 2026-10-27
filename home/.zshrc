# ZSH Config
DISABLE_AUTO_UPDATE="true"
DISABLE_MAGIC_FUNCTIONS="true"
ZSH_DISABLE_COMPFIX="true"
export ZSH=$HOME/.oh-my-zsh
ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/oh-my-zsh"
mkdir -p "$ZSH_CACHE_DIR"
export ZSH_COMPDUMP="$ZSH_CACHE_DIR/.zcompdump-${HOST%%.*}-${ZSH_VERSION}"
ZSH_THEME="miloshadzic"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}%{%G⚡}%{$reset_color%}"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HYPHEN_INSENSITIVE="true"
HIST_STAMPS="yyyy-mm-dd"
# Load NVM functions/completion now; select Node on first use.
export NVM_DIR="$HOME/.nvm"
NVM_HOMEBREW="/opt/homebrew/opt/nvm"
NVM_LAZY=1
NVM_LAZY_CMD=(npx pnpm pnpx corepack)
plugins=(git tmux autojump nvm)
fpath=("$HOME/.zfunc" "$HOME/.local/share/zsh/site-functions" $fpath)
source "$ZSH/oh-my-zsh.sh"
# Disable the annoying autocorrect feature
# # Must come after sourcing oh-my-zsh.sh
unsetopt correct_all


# Time saving functions/aliases
#
function gitacp() {
    git add -A && git commit -m "$1" && git push
  }
alias gp="gitacp"
alias gco='git checkout'
alias ll="ls -lA"
alias gitlogp="git log --pretty=oneline"
alias hosts="vim /etc/hosts"
alias brew-home="cd $( brew --prefix )"
alias v="vim"
zstyle ':completion:*' menu select

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

# Bind key to delete only left of cursor
bindkey -M emacs '^U' backward-kill-line
bindkey -M viins '^U' backward-kill-line
bindkey -M main '^U' backward-kill-line
