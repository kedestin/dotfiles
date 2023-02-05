fancy-ctrl-z () {
  # Do nothing if there's no job to resume
  if ! jobs "%+" > /dev/null 2>&1; then
    return
  fi
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER=" fg"
    zle accept-line -w
  else
    zle push-input -w
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z
