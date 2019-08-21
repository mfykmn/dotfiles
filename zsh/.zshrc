# 環境変数
export LANG=ja_JP.UTF-8

# 色を使用出来るようにする
autoload -Uz colors
colors

# ls color
export LSCOLORS=gxfxcxdxbxegedabagacag
export LS_COLORS='di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;46'

# 補完候補もLS_COLORSに合わせて色が付くようにする
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

#ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# zshの補完を強化
if [ -e /usr/local/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi

### path ###
# pyenv
export PYENV_ROOT=$HOME/.pyenv
# Go
export GOPATH=$HOME/repo
export GOENV_ROOT=$HOME/.goenv
# nodebrew
export NODE=$HOME/.nodebrew/current
# NeoVim
export XDG_CONFIG_HOME=$HOME/.config


export PATH=$PYENV_ROOT/bin:$GOENV_ROOT/bin:$GOPATH/bin:$NODE/bin:$PATH
eval "$(pyenv init -)"

# GOENV
export GOENV_DISABLE_GOPATH=1
eval "$(goenv init -)"

### alias ###
alias ls='ls -GF'
alias la='ls -la'
alias gitl='git log --graph --all --format="%x09%an%x09%h %d %s"'
alias vim='nvim'
alias lsql='mysql -uroot -p1111 -h192.168.99.100'
alias lcql='cqlsh  192.168.99.100 --cqlversion="3.4.0"'
alias gunicorn='${PYENV_ROOT}/versions/2.7.10/lib/python2.7/site-packages/gunicorn'
alias gitc='git fetch --prune $(git fetch -p)'
# docker
alias drma='docker rm -f $(docker ps -aq)'
alias drmia='docker rmi $(docker images -q)'
alias drm='docker rm $(docker ps -a | peco | cut -d" " -f1)'
alias drmi='docker rmi $(docker images | peco |  sed -e "s/  */ /g" | cut -d" " -f3)'
#alias -g DPP='`docker ps | tail -n +2 | peco | cut -d" " -f1`'
#alias -g DIP='`docker images | peco |  sed -e "s/  */ /g" | cut -d" " -f3`'

# git
alias g='cd $(ghq root)/$(ghq list | peco)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'

# Haskel
alias ghc='stack ghc --'
alias ghci='stack ghci --'
alias runhaskell='stack runhaskell --'

# editor
alias intelij='open -b com.jetbrains.intellij $(ghq root)/$(ghq list | peco)'
alias goland='open -b com.jetbrains.goland $(ghq root)/$(ghq list | peco)'
alias webstorm='open -b com.jetbrains.webstorm $(ghq root)/$(ghq list | peco)'
alias phpstorm='open -b com.jetbrains.phpstorm $(ghq root)/$(ghq list | peco)'
alias pycharm='open -b com.jetbrains.pycharm $(ghq root)/$(ghq list | peco)'
alias subl='subl $(ghq root)/$(ghq list | peco)'

# vim
alias v='vim $(ghq root)/$(ghq list | peco)' 

# asta
alias asta='open -n $(ls *.asta | peco)'

### util ###
bindkey '^]' peco-src

function peco-src() {
  local src=$(ghq list --full-path | peco --query "$LBUFFER")
  if [ -n "$src" ]; then
    BUFFER="cd $src"
    zle accept-line
  fi
  zle -R -c
}
zle -N peco-src


### direnv
eval "$(direnv hook zsh)"

### GCP
# The next line updates PATH for the Google Cloud SDK.
if [ -f '${HOME}/google-cloud-sdk/path.zsh.inc' ]; then source '${HOME}/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '${HOME}/google-cloud-sdk/completion.zsh.inc' ]; then source '${HOME}/google-cloud-sdk/completion.zsh.inc'; fi

# Go
export GO111MODULE=on

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
