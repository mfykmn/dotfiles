####################################################################################
### zsh ###
#####################################################################################
# 環境変数
export LANG=ja_JP.UTF-8
export PATH="/opt/homebrew/bin:$PATH"

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
### Node ###
#####################################################################################
export NODENV_ROOT=$HOME/.nodenv
eval "$(nodenv init -)"
export PATH=$NODENV_ROOT/shims/bin:$HOME/.yarn/bin:$PATH

#####################################################################################
### Ruby ###
#####################################################################################
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
[[ -d ~/.rbenv  ]] && \
export PATH=${HOME}/.rbenv/bin:${PATH} && \
eval "$(rbenv init -)"

#####################################################################################
### Java ###
#####################################################################################
export SDKMAN_DIR="$HOME/.sdkman"

# SDKMANがインストールされていなかった場合はインストール
[[ ! -d ${SDKMAN_DIR} ]] && curl -s "https://get.sdkman.io" | bash

source "$HOME/.sdkman/bin/sdkman-init.sh"

#####################################################################################
### Android ###
#####################################################################################
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools

#####################################################################################
### Flutter ###
#####################################################################################
export PATH=$PATH:$HOME/flutter/bin
export PATH=$PATH:$HOME/.pub-cache/bin

## maestro
eval "$(task completion)"
export PATH=$PATH:$HOME/.maestro/bin
