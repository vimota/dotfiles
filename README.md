# dotfiles 
Gotta have my dotfiles! Plays nicely with: 

- git
- vim
- tmux
- oh-my-zsh
- rbenv

# Installation
Use [homesick](https://github.com/technicalpickles/homesick) to install these dotfiles. Yes, it requires [Ruby](http://ruby-lang.org)! Thankfully it works on `1.8.7` so you can still be an old tard.

    $ gem install homesick
    $ homesick clone vimota/dotfiles
    $ homesick symlink dotfiles

## vim
On the first run of vim, after sourcing, run `:PluginInstall`.
