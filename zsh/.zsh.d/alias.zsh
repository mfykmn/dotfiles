alias ls='ls -GF'
alias la='ls -la'
alias gunicorn='${PYENV_ROOT}/versions/2.7.10/lib/python2.7/site-packages/gunicorn'


#####################################################################################
### Editor ###
#####################################################################################
alias intelij='open -b com.jetbrains.intellij $(ghq root)/$(ghq list | peco)'
alias goland='open -b com.jetbrains.goland $(ghq root)/$(ghq list | peco)'
alias clion='open -b com.jetbrains.clion $(ghq root)/$(ghq list | peco)'
alias webstorm='open -b com.jetbrains.webstorm $(ghq root)/$(ghq list | peco)'
alias phpstorm='open -b com.jetbrains.phpstorm $(ghq root)/$(ghq list | peco)'
alias pycharm='open -b com.jetbrains.pycharm $(ghq root)/$(ghq list | peco)'
alias subl='subl $(ghq root)/$(ghq list | peco)'

#####################################################################################
### Docker ###
#####################################################################################
alias d=docker
alias drma='docker rm -f $(docker ps -aq)'
alias drmia='docker rmi $(docker images -q)'
alias drm='docker rm $(docker ps -a | peco | cut -d" " -f1)'
alias drmi='docker rmi $(docker images | peco |  sed -e "s/  */ /g" | cut -d" " -f3)'
#alias -g DPP='`docker ps | tail -n +2 | peco | cut -d" " -f1`'
#alias -g DIP='`docker images | peco |  sed -e "s/  */ /g" | cut -d" " -f3`'

#####################################################################################
### K8S ###
#####################################################################################
alias k=kubectl
alias ksec=kubesec
alias kctx=kubectx
alias kns=kubens
alias kval=kubeval

#####################################################################################
### Git ###
#####################################################################################
alias gitc='git fetch --prune $(git fetch -p)'
alias gitl='git log --graph --all --format="%x09%an%x09%h %d %s"'
alias g='cd $(ghq root)/$(ghq list | peco)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
