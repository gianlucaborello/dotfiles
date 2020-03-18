PS1='\W $ '

export PATH=/usr/local/sbin:$PATH
export GOPATH=$HOME/src/go
export PATH=$GOPATH/bin:$PATH

export EDITOR="code -w"

export CLICOLOR=1
export GREP_OPTIONS='--color=auto'

export HISTSIZE=-1
export HISTFILESIZE=-1
export HISTCONTROL=erasedups:ignorespace:ignoredups
shopt -s histappend
export PROMPT_COMMAND='history -a'

export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

source <(kubectl completion bash)

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias dedup_history="tac $HISTFILE | awk '!x[$0]++' | tac | sponge $HISTFILE"
