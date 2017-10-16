#!/usr/bin/env zsh
setopt EXTENDED_GLOB
dir=${0:a:h}
for rcfile in "${dir}"/runcoms/^README.md(.N); do
  ln -si "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
