#alias
alias ll="ls -l"
alias cp='cp -i'
alias rm='rm -i'
alias startweb='sudo /usr/local/Cellar/httpd/2.2.25/sbin/apachectl -k start'
alias restartweb='sudo /usr/local/Cellar/httpd/2.2.25/sbin/apachectl -k restart'
alias stopweb='sudo /usr/local/Cellar/httpd/2.2.25/sbin/apachectl -k stop'
alias va='cd ~/dev/monipla2_vagrant'
alias vash='vagrant ssh'
alias vau='vagrant up'
alias gprb='git-prune-remote-branch'


#history
HISTFILE=~/.zsh_history
HISTSIZE=10000000
SAVEHIST=$HISTSIZE
setopt extended_history
setopt hist_ignore_dups
setopt share_history

export PATH="/usr/local/bin/:$PATH"
eval "$(rbenv init -)"

autoload colors
colors

PROMPT="
 %{${fg[yellow]}%}%~%{${reset_color}%} 
 [%n]$ "

 PROMPT2='[%n]> '

 export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
 export LS_COLORS='di=01;36:ln=01;35:ex=01;32'
 zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'
