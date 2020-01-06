#!/bin/sh

### Vim
mkdir -p ~/.config/nvim/
ln -nfs ~/dotfiles/vim/.nvimrc ~/.config/nvim/init.vim
ln -nfs ~/dotfiles/vim/dein.toml ~/.config/nvim/dein.toml
ln -nfs ~/dotfiles/vim/dein_lasy.toml ~/.config/nvim/dein_lasy.toml

### zsh
ln -nfs ~/dotfiles/zsh/.zshrc ~/.zshrc

### Sierra
ln -nfs ~/dotfiles/karabiner.json ~/.config/karabiner/karabiner.json

### Goenv
ln -nfs ~/.goenv ~/goenv

### tmux
ln -nfs  ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf

### Git
ln -nfs ~/dotfiles/git/.gitconfig ~/.gitconfig
mkdir -p ~/.git_template/hooks
ln -nfs  ~/dotfiles/git/hooks ~/.git_template/hooks

### Launchd
ln -nfs ~/dotfiles/launch-agents ~/Library/LaunchAgents
launchctl unload ~/Library/LaunchAgents/docker-clean.plist
launchctl load ~/Library/LaunchAgents/docker-clean.plist
