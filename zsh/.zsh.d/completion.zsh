#####################################################################################
### 補完の強化 ###
#####################################################################################
mkdir -p ~/.zsh/completion

if [ ! -f "$HOME/.zsh/completion/_docker" ]; then
    curl -L https://raw.githubusercontent.com/docker/cli/master/contrib/completion/zsh/_docker > ~/.zsh/completion/_docker
fi

# TODO AWS

# completionを追加
if [ -e /usr/local/share/zsh/site-functions ]; then
    fpath=(/usr/local/share/zsh/site-functions $fpath)
fi
if [ -e /usr/local/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi
if [ -e ~/.zsh/completion ]; then
    fpath=(~/.zsh/completion $fpath)
fi

# 補完を有効にする
autoload -U compinit
compinit -u

source <(kubesec completion zsh)
source <(kubectl completion zsh)

#####################################################################################
### 補完メッセージを読みやすくする ###
#####################################################################################
zstyle ':completion:*' verbose yes
zstyle ':completion:*' format '%B%d%b'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''