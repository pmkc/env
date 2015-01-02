#!/usr/bin/env zsh

export ZDOTDIR=$(dirname $(readlink -f ${(%):-%N}))
