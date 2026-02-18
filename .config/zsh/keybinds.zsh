#!/usr/bin/env zsh

autoload -z edit-command-line
zle -N edit-command-line
# Ctrl-x-e
bindkey "^X^E" edit-command-line



zle -N open-output-in-editor
# Ctrl-o-e
bindkey "^O^E" open-output-in-editor

