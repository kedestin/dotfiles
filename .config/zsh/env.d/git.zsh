
# Add custom git scripts to path so they're available to git
path+="$XDG_DATA_HOME/git/personal/bin"

# Add completions for git scripts to fpath and autoload
fpath+="$XDG_DATA_HOME/git/personal/zsh/completions"
autoload -Uz "${fpath[-1]}"/*(.:t)


fpath+="$XDG_DATA_HOME/git/personal/zsh/functions"
autoload -Uz add-zsh-hook
# Add implementation for dynamic named directory for root of current git repo
add-zsh-hook -Uz zsh_directory_name _git_root_named_directory