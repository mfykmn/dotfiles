# 環境変数
export LANG=ja_JP.UTF-8
export PATH="/opt/homebrew/bin:$PATH"

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
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

####################################################################################
### zsh ###
#####################################################################################
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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/m-kamono/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/m-kamono/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/m-kamono/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/m-kamono/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
