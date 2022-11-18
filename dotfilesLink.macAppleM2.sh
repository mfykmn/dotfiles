#!/bin/sh

### zsh
ln -nfs ~/workspace/dotfiles/zsh/mac/apple-m2/.zshrc ~/.zshrc
ln -nfs ~/workspace/dotfiles/zsh/mac/apple-m2/.zsh.d ~/.zsh.d

### powerline-shell
mkdir -p ~/.config/powerline-shell
ln -nfs ~/workspace/dotfiles/powerline-shell/config.json ~/.config/powerline-shell/config.json

### tmux
ln -nfs  ~/workspace/dotfiles/tmux/.tmux.conf ~/.tmux.conf

### Git
ln -nfs ~/workspace/dotfiles/git/.gitconfig ~/.gitconfig