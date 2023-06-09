export EDITOR=vim

alias ls='ls --color=auto'
alias ll='ls -lF --color=auto'
alias grep='grep --color=auto'
alias sudo='sudo -E'
alias ..='cd ..'

if [ -f /usr/share/bash-completion/bash-completion ]; then
	source /usr/share/bash-completion/bash-completion
fi

export FZF_DEFAULT_OPTS='--no-height'
export FZF_TMUX=1

if [ -f /usr/share/fzf/key-bindings.bash ]; then
	source /usr/share/fzf/key-bindings.bash
fi

if [ -f /usr/share/fzf/completion.bash ]; then
	source /usr/share/fzf/completion.bash
fi

eval $(thefuck --alias)

export PS1="\[\033[38;5;39m\]\w\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]"
. "$HOME/.cargo/env"
