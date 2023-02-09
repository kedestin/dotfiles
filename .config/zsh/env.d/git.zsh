
# Add custom git scripts to path so they're available to git
path+="$XDG_DATA_HOME/git/personal/bin"

# Add completions for git scripts to fpath and autoload
fpath+="$XDG_DATA_HOME/git/personal/zsh/completions"
autoload -Uz "${fpath[-1]}"/*(.:t)