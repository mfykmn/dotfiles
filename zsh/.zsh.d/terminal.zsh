
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

# prompt
source "$(brew --prefix)/opt/kube-ps1/share/kube-ps1.sh"

aws_prof() {
  local profile="${AWS_PROFILE:=default}"

  echo "%{$fg_bold[blue]%}aws:(%{$fg[yellow]%}${profile}%{$fg_bold[blue]%})%{$reset_color%} "
}

precmd () {
  PROMPT='$(kube_ps1)
$(powerline-shell --shell zsh $?)'
  RPROMPT='$(aws_prof)'
}

add-zsh-hook precmd precmd
setopt PROMPT_SUBST
setopt TRANSIENT_RPROMPT
