# Environment for login shells
eval "$(/opt/homebrew/bin/brew shellenv)"

export PNPM_HOME="$HOME/Library/pnpm"
export BUN_INSTALL="$HOME/.bun"
export WORKON_HOME="$HOME/.virtualenvs"
export EDITOR="vim"
export SSH_KEY_PATH="$HOME/.ssh/rsa_id"
export DYLD_FALLBACK_LIBRARY_PATH="/opt/homebrew/lib${DYLD_FALLBACK_LIBRARY_PATH:+:$DYLD_FALLBACK_LIBRARY_PATH}"

# zsh exposes PATH as the `path` array. Keep entries unique while preserving
# the order below.
typeset -U path PATH
path=(
  "$PNPM_HOME"
  "$PNPM_HOME/bin"
  "$HOME/.npm-global/bin"
  "$HOME/.local/bin"
  "$HOME/.cargo/bin"
  "$HOME/bin"
  "$BUN_INSTALL/bin"
  "/opt/homebrew/opt/mysql-client/bin"
  "/opt/homebrew/opt/postgresql@15/bin"
  "/usr/local/opt/sqlite/bin"
  "/usr/local/opt/openjdk@11/bin"
  "${path[@]}"
  "/usr/local/git/bin"
  "/usr/X11/bin"
  "/usr/local/share/npm/bin"
  "/usr/local/lib/ruby/gems/2.6.0/bin"
  "/usr/local/share/dotnet"
  "$HOME/code/utils"
  "$HOME/.lmstudio/bin"
)
export PATH