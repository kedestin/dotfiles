#!/usr/bin/env zsh

# https://github.com/pyenv/pyenv

# pyenv lets you easily switch between multiple versions of Python.
#   It's simple, unobtrusive, and follows the UNIX tradition of single-purpose
#   tools that do one thing well.
export PYENV_ROOT=$XDG_DATA_HOME/pyenv
export PATH="$PATH:$PYENV_ROOT/bin"