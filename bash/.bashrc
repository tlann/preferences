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
#docker stop remove all containers
alias drc='docker rm $(docker ps -aq)'
#docker stop all containers
alias dsc='docker stop $(docker ps -aq)'
#docker remove all volumes
alias drv='docker volume rm $(docker volume ls -q)'
#docker remove all images
alias dri='docker rmi -f $(docker images -q)'

alias dek='docker exec -it keycloak.noms.mugu bash'
alias dlk='docker log -t 1000 keycloak.noms.mugu'

alias tda='terraform destroy -auto-approve'

alias trs='rm terraform.tfstate*'

alias rmt="rm *.*~"
