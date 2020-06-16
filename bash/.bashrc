# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#export TF_LOG="DEBUG"
export PATH="/opt/idea-IU-193.6911.18/bin:/opt/:$PATH"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias dpa='docker ps -a'
alias drc='docker rm $(docker ps -aq)'
alias dsc='docker stop $(docker ps -aq)'
alias drv='docker volume rm $(docker volume ls -q)'

alias dek='docker exec -it keycloak.noms.mugu bash'
alias dlk='docker log -t 1000 keycloak.noms.mugu'

alias trs='rm terraform.tfstate*'

alias rmt="rm *.*~"
