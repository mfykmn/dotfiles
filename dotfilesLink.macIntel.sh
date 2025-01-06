#!/bin/sh

### Vim
# mkdir -p ~/.config/nvim/
# ln -nfs ~/dotfiles/vim/.nvimrc ~/.config/nvim/init.vim
# ln -nfs ~/dotfiles/vim/dein.toml ~/.config/nvim/dein.toml
# ln -nfs ~/dotfiles/vim/dein_lasy.toml ~/.config/nvim/dein_lasy.toml

### zsh
ln -nfs ~/workspace/dotfiles/zsh/mac/intel/.zshrc ~/.zshrc
ln -nfs ~/workspace/dotfiles/zsh/mac/intel/.zsh.d ~/.zsh.d

### powerline-shell
#mkdir -p ~/.config/powerline-shell
#ln -nfs ~/dotfiles/powerline-shell/config.json ~/.config/powerline-shell/config.json

### Goenv
# ln -nfs ~/.goenv ~/goenv

### tmux
# ln -nfs  ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf

### Git
ln -nfs ~/workspace/dotfiles/git/.gitconfig ~/.gitconfig
# mkdir -p ~/.git_template/hooks
# ln -nfs  ~/dotfiles/git/hooks ~/.git_template/hooks

### Launchd
# ln -nfs ~/dotfiles/launch-agents ~/Library/LaunchAgents
# launchctl unload ~/Library/LaunchAgents/docker-clean.plist
# launchctl load ~/Library/LaunchAgents/docker-clean.plist
