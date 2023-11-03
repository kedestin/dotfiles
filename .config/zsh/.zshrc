#!/bin/zsh

# Make PATH entries unique
export -U PATH 

OPTIONSFILE=${ZDOTDIR}/options.zsh
PLUGINFILE=${ZDOTDIR}/plugins.zsh
ENVFILE=${ZDOTDIR}/env.zsh
KEYBINDFILE=${ZDOTDIR}/keybinds.zsh

source "$KEYBINDFILE"
source "$ENVFILE"
source "$PLUGINFILE"

autoload -U compinit && compinit

source "$OPTIONSFILE"
