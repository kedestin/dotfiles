HISTSIZE=1600
SAVEHIST=1600
HISTFILE=${XDG_STATE_HOME}/zsh/history

# Autoload personal zsh functions
fpath+="$XDG_DATA_HOME/zsh/personal/functions"
autoload -Uz "${fpath[-1]}"/*(.:t)

# Load run-help (Alt+h in emacs keybinds) and helpers
autoload -Uz run-help
autoload -Uz run-help-git run-help-ip run-help-openssl run-help-sudo
