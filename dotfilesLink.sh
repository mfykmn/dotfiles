#!/bin/sh

### Vim
mkdir -p ~/.config/nvim/
ln -sf ~/dotfiles/vim/.nvimrc ~/.config/nvim/init.vim
ln -sf ~/dotfiles/vim/dein.toml ~/.config/nvim/dein.toml
ln -sf ~/dotfiles/vim/dein_lasy.toml ~/.config/nvim/dein_lasy.toml

### zsh
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc

### Sierra
ln -sf ~/dotfiles/karabiner.json ~/.config/karabiner/karabiner.json

### Goenv
ln -s ~/.goenv ~/goenv

### tmux
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
