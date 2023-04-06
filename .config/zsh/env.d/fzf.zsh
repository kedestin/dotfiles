#!/usr/bin/env zsh
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

FZF_DEFAULT_COMMAND='fd -t file'
