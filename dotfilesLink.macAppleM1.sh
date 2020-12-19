#!/bin/sh

### zsh
ln -nfs ~/workspace/dotfiles/zsh/mac/apple-m1/.zshrc ~/.zshrc
ln -nfs ~/workspace/dotfiles/zsh/mac/apple-m1/.zsh.d ~/.zsh.d

### powerline-shell
mkdir -p ~/.config/powerline-shell
ln -nfs ~/workspace/dotfiles/powerline-shell/config.json ~/.config/powerline-shell/config.json

### tmux
ln -nfs  ~/workspace/dotfiles/tmux/.tmux.conf ~/.tmux.conf
