# Gets executed for login shells
# eval "$(/opt/homebrew/bin/brew shellenv)"
eval $(/opt/homebrew/bin/brew shellenv bash)
# [[ -s "$HOME/.zshrc" ]] && source "$HOME/.zshrc"

export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
