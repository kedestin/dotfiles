#!/usr/bin/env zsh

autoload -z edit-command-line
zle -N edit-command-line
# Ctrl-x-e
bindkey "^X^E" edit-command-line