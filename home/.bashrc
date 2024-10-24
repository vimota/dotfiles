# Gets executed for interactive, non-login shells
# Prompt
[[ -f "$HOME/.bash_prompt" ]] && source "$HOME/.bash_prompt"

# Larger bash history (default is 500)
export HISTFILESIZE=10000
export HISTSIZE=10000

PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Common
[[ -s "$HOME/.commonrc" ]] && source "$HOME/.commonrc"
. "$HOME/.cargo/env"
