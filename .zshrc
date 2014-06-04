if [ -z "$TMUX" -a -z "$STY" ]; then
	if type tmuxx >/dev/null 2>&1; then
		tmuxx
	elif type tmux >/dev/null 2>&1; then
		if tmux has-session && tmux list-sessions | /usr/bin/grep -qE '.*]$'; then
			tmux attach && echo "tmux attached session "
		else
		tmux new-session && echo "tmux created new session"
		fi
	elif type screen >/dev/null 2>&1; then
		screen -rx || screen -D -RR
	fi
fi

alias ll="ls -l"
alias cp='cp -i'
alias rm='rm -i'

HISTFILE=~/.zsh_history
HISTSIZE=10000000
SAVEHIST=$HISTSIZE
setopt extended_history
setopt hist_ignore_dups
setopt share_history


