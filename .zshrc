# 環境変数
export LANG=ja_JP.UTF-8


# 色を使用出来るようにする
autoload -Uz colors
colors

# ls
export LSCOLORS=gxfxcxdxbxegedabagacag
export LS_COLORS='di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;46'

# 補完候補もLS_COLORSに合わせて色が付くようにする
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# lsがカラー表示になるようエイリアスを設定
case "${OSTYPE}" in
darwin*)
  # Mac
  alias ls="ls -GF"
  ;;
linux*)
  # Linux
  alias ls='ls -F --color'
  ;;
esac

#ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# zshの補完を強化
if [ -e /usr/local/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi

# Pythonパス
export PYENV_ROOT="${HOME}/.pyenv"
# Goパス
export GOPATH="${HOME}/go"

export PATH=${PYENV_ROOT}/bin:${GOPATH}/bin:$PATH
eval "$(pyenv init -)"
