export PATH=/usr/local/bin:$PATH
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad
export DOCKER_HOST=tcp://192.168.59.104:2375
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
alias ll="ls -l"
alias cp='cp -i'
alias rm='rm -i'
eval "$(rbenv init -)"

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/matsumotosatoru/.gvm/bin/gvm-init.sh" ]] && source "/Users/matsumotosatoru/.gvm/bin/gvm-init.sh"
