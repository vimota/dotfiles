# dotfiles
Plays nicely with:

- git
- vim (contains vundle as a submodule)
- tmux
- oh-my-zsh (contained as a submodule)

# Installation
Use [homesick](https://github.com/technicalpickles/homesick) to install these dotfiles. Yes, it requires [Ruby](http://ruby-lang.org)! If running on a fresh machine, best to do `brew install ruby`, and update .zshrc's gem PATH if `brew info ruby` differs.

    $ gem install homesick
    $ homesick clone vimota/dotfiles
    $ homesick symlink dotfiles

## vim
On the first run of vim, after sourcing, run `:PluginInstall`.
