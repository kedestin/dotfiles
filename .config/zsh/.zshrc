#!/bin/zsh
OPTIONSFILE=${ZDOTDIR}/options.zsh
PLUGINFILE=${ZDOTDIR}/plugins.zsh
ALIASFILE=${ZDOTDIR}/aliases.zsh
source "$ALIASFILE"
source "$PLUGINFILE"

autoload -U compinit && compinit

source "$OPTIONSFILE"
