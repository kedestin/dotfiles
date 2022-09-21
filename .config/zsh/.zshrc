#!/bin/zsh
OPTIONSFILE=${ZDOTDIR}/options.zsh
PLUGINFILE=${ZDOTDIR}/plugins.zsh
ALIASFILE=${ZDOTDIR}/aliases.zsh
ENVFILE=${ZDOTDIR}/env.zsh
source "$ALIASFILE"
source "$ENVFILE"
source "$PLUGINFILE"

autoload -U compinit && compinit

source "$OPTIONSFILE"
