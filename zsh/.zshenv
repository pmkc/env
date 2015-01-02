#!/usr/bin/env zsh

export ZDOTDIR=$(dirname $(readlink -f ${(%):-%N}))

typeset -U path
path+=("$HOME/bin")
