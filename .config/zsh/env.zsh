#!/usr/bin/env zsh


local envdir="${0:a:h}/env.d"
local -a envFiles
envFiles=(ls nvm pyenv ripgrep git)


for envFile in $envFiles; do
	source "$envdir/$envFile.zsh"
done
