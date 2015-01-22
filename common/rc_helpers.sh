#!/bin/bash
function source-if-exists() {
  local sourced_file=$1
  if [[ -r $sourced_file ]]; then
    source $sourced_file
  fi
}
