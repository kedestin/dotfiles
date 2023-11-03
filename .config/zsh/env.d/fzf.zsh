#!/usr/bin/env zsh

if command -v fzf-share > /dev/null ; then
  source "$(fzf-share)"/completion.zsh
  source "$(fzf-share)"/key-bindings.zsh
else
  {
    local distro=${(Q):-$(awk -F= '/^NAME/{print $2}' /etc/os-release)}
    case "$distro"; in
      Ubuntu)
        source /usr/share/doc/fzf/examples/completion.zsh
        source /usr/share/doc/fzf/examples/key-bindings.zsh
      ;;
      'Fedora Linux')
        source /usr/share/zsh/site-functions/fzf
        source /usr/share/fzf/shell/key-bindings.zsh
      ;;
      *)
        echo "Do not know where to find fzf shell integrations"
        ;;
    esac
  }
fi
FZF_DEFAULT_COMMAND='fd -t file'


# Integration with zshz
local z_source="$XDG_DATA_HOME/zcomet/repos/agkozak/zsh-z/zsh-z.plugin.zsh"
if [ -f "$z_source" ]; then
  local fzfz="$XDG_DATA_HOME/zsh/personal/scripts/fzfz"
  export FZF_ALT_C_COMMAND="source '$z_source' && source '$fzfz'"
  # export FZF_ALT_C_OPTS='--tiebreaker=end'
fi
