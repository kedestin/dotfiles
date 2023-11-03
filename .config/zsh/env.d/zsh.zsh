HISTSIZE=400
SAVEHIST=400
HISTFILE=${XDG_STATE_HOME}/zsh/history

# Autoload personal zsh functions
fpath+="$XDG_DATA_HOME/zsh/personal/functions"
autoload -Uz "${fpath[-1]}"/*(.:t)
