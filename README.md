# dotfiles 
Plays nicely with: 

- git
- vim
- tmux
- oh-my-zsh

# Installation
Use [homesick](https://github.com/technicalpickles/homesick) to install these dotfiles. Yes, it requires [Ruby](http://ruby-lang.org)! If running on a fresh machine, best to do `brew install ruby`, and update .zshrc's PATH if gem path if `brew info ruby` differs.

    $ gem install homesick
    $ homesick clone vimota/dotfiles
    $ homesick symlink dotfiles

## vim
On the first run of vim, after sourcing, run `:PluginInstall`.
