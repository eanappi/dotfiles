# Docker
alias docker_stop='sudo docker ps -q | xargs -I% sudo docker stop %'

# File system
alias l='pwd&&ls -h --group-directories-first'
alias ll='pwd&&ls -lah --group-directories-first'

# Git
alias ge='git clone'
alias gs='git status'
alias gc='git commit'
alias gcm='git commit -m'
alias ga='git add'
alias gaa='git add .'
alias gp='git push'
alias gl='git pull'

# Vim
alias v='nvim'

