#!/usr/bin/env zsh


local envdir="${0:a:h}/env.d"
local -a envFiles
envFiles=(zsh ls ripgrep git fzf)


for envFile in $envFiles; do
	source "$envdir/$envFile.zsh"
done
