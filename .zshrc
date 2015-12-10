#alias
alias ll="ls -l"
alias cp='cp -i'
alias rm='rm -i'
alias startweb='sudo /usr/local/Cellar/httpd/2.2.25/sbin/apachectl -k start'
alias restartweb='sudo /usr/local/Cellar/httpd/2.2.25/sbin/apachectl -k restart'
alias stopweb='sudo /usr/local/Cellar/httpd/2.2.25/sbin/apachectl -k stop'
alias va='cd ~/dev/brandco_vagrant'
alias vash='vagrant ssh'
alias vau='vagrant up'
alias gprb='git-prune-remote-branch'
alias devmgr03='sshpass -p `cat ~/.ssh/.devmgr03_pass` ssh root@192.168.255.222'
alias psysh='./Users/matsumotosatoru/src/psysh'

#history
HISTFILE=~/.zsh_history
HISTSIZE=10000000
SAVEHIST=$HISTSIZE
setopt extended_history
setopt hist_ignore_dups
setopt share_history

export PATH="/usr/local/bin/:$PATH"
eval "$(rbenv init -)"

setopt correct
setopt re_match_pcre
setopt prompt_subst

SPROMPT="%{$fg[red]%}%{$suggest%}(*'~'%)? < もしかして %B%r%b %{$fg[red]%}かな? [そう!(y), 違う!(n),a,e]:${reset_color} "

autoload colors
colors

PROMPT="
 %{${fg[yellow]}%}%~%{${reset_color}%} 
 [%n]$ "

 PROMPT2='[%n]> '

 export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
 export LS_COLORS='di=01;36:ln=01;35:ex=01;32'
 zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/matsumotosatoru/.gvm/bin/gvm-init.sh" ]] && source "/Users/matsumotosatoru/.gvm/bin/gvm-init.sh"

export LSCOLORS=cxfxcxdxbxegedabagacad
alias ls="ls -G"
