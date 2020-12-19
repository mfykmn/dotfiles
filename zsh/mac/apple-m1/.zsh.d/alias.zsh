alias ls='ls -GF'
alias la='ls -la'

#####################################################################################
### Docker ###
#####################################################################################
alias d=docker
alias drma='docker rm -f $(docker ps -aq)'
alias drmia='docker rmi $(docker images -q)'
alias drmsa='docker volume rm $(docker volume ls -q)'

#####################################################################################
### Git ###
#####################################################################################
alias gitc='git fetch --prune $(git fetch -p)'
alias gitl='git log --graph --all --format="%x09%an%x09%h %d %s"'
