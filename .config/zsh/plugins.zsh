# zcomet installation and initialization
function () {
  local ZCOMETDIR="${XDG_DATA_HOME:-${HOME}/.local/share}/zcomet"

  zstyle ':zcomet:' home-dir "$ZCOMETDIR"

  if [[ ! -f "${ZCOMETDIR}/bin/zcomet.zsh" ]]; then
    command git clone https://github.com/agkozak/zcomet.git "${ZCOMETDIR}/bin"
  fi

  source "${ZCOMETDIR}/bin/zcomet.zsh"
}

# Setup theme
zcomet load 'mafredri/zsh-async'
zcomet load 'kedestin/minimalxx'

# zsh niceties
zcomet load 'hlissner/zsh-autopair'
zcomet load 'kedestin/auto-ls'
zcomet load 'agkozak/zsh-z'
zcomet load 'popstas/zsh-command-time'
zcomet load 'kedestin/zsh-autoenv' # cd gets really slow if allowed to look up
zcomet load 'Tarrasch/zsh-functional'
zcomet load 'zsh-users/zsh-autosuggestions'
zcomet load 'zsh-users/zsh-completions'
zcomet load 'zsh-users/zsh-syntax-highlighting'
zcomet load "${XDG_DATA_HOME}/zsh/personal/plugins/fancy-ctrl-z"

# Plugin Config

AUTOENV_LOOK_UPWARDS=0

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main)
ZSH_HIGHLIGHT_DIRS_BLACKLIST+=(/)
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'

ZSH_AUTOSUGGEST_STRATEGY=(completion)
export ZSH_AUTOSUGGEST_USE_ASYNC=1

MNML_PROMPT=(mnml_pyenv mnml_status)
# export MNML_RPROMPT=(mnml_ssh 'mnml_cwd 2 0' mnml_git)
MNML_RPROMPT=('mnml_cwd 2 0' mnml_git)
export MNML_USER_CHAR=❯❯❯
export VIRTUAL_ENV_DISABLE_PROMPT=1

ZSH_COMMAND_TIME_MSG="elapsed %s"
ZSH_COMMAND_TIME_COLOR="blue"

export AUTO_LS_NEWLINE=false
AUTO_LS_COMMANDS=(ls)

ZSHZ_DATA=${XDG_DATA_HOME}/.z
