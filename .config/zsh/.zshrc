#!/bin/zsh

# Make PATH entries unique
export -U PATH 

OPTIONSFILE=${ZDOTDIR}/options.zsh
PLUGINFILE=${ZDOTDIR}/plugins.zsh
ALIASFILE=${ZDOTDIR}/aliases.zsh
ENVFILE=${ZDOTDIR}/env.zsh
KEYBINDFILE=${ZDOTDIR}/keybinds.zsh

source "$ALIASFILE"
source "$KEYBINDFILE"
source "$PLUGINFILE"
source "$ENVFILE"

autoload -U compinit && compinit

source "$OPTIONSFILE"
