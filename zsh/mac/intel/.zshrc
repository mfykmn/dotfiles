####################################################################################
### zsh ###
#####################################################################################
# 環境変数
export LANG=ja_JP.UTF-8

# zsh.dの読み込み
ZSHHOME="${HOME}/.zsh.d"

if [ -d $ZSHHOME -a -r $ZSHHOME -a \
     -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi

#####################################################################################
### Python ###
#####################################################################################
export PYENV_ROOT=$HOME/.pyenv
eval "$(pyenv init -)"
export PATH=$PYENV_ROOT/bin:$HOME/Library/Python/3.7/bin:$PATH

#####################################################################################
### Go ###
#####################################################################################
export GOPATH=$HOME/repo
export GOENV_ROOT=$HOME/.goenv
export GOENV_DISABLE_GOPATH=1
eval "$(goenv init -)"
export GO111MODULE=on
export PATH=$GOENV_ROOT/bin:$GOPATH/bin:$PATH

#####################################################################################
### Node ###
#####################################################################################
export NODENV_ROOT=$HOME/.nodenv
eval "$(nodenv init -)"
export PATH=$NODENV_ROOT/shims/bin:$HOME/.yarn/bin:$PATH

#####################################################################################
### Haskel ###
#####################################################################################
alias ghc='stack ghc --'
alias ghci='stack ghci --'
alias runhaskell='stack runhaskell --'

#####################################################################################
### Direnv ###
#####################################################################################
eval "$(direnv hook zsh)"

#####################################################################################
### Vim ###
#####################################################################################
export XDG_CONFIG_HOME=$HOME/.config
alias vim='nvim'
alias v='vim $(ghq root)/$(ghq list | peco)' 


#####################################################################################
### GCP ###
#####################################################################################
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

#####################################################################################
### util ###
#####################################################################################
# peco
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

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zs

#####################################################################################
### Java ###
#####################################################################################
export SDKMAN_DIR="$HOME/.sdkman"

# SDKMANがインストールされていなかった場合はインストール
[[ ! -d ${SDKMAN_DIR} ]] && curl -s "https://get.sdkman.io" | bash

[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

