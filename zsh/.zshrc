#!/usr/bin/env zsh

source ~/env/lib/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle python
antigen bundle tmux
#antigen bundle vi-mode

# Fish-like bundles
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
#antigen bundle tarruda/zsh-autosuggestions

# Load the theme.
antigen theme fishy

# Tell antigen that you're done.
antigen apply

source $HOME/env/common/rc_helpers.sh

ZKBD_FILE=~/env/zsh/.zkbd/$TERM-${${DISPLAY:t}:-$VENDOR-$OSTYPE}
source-if-exits $ZKBD_FILE


# history-substring-search config
# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# Highlighting style
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
ZSH_HIGHLIGHT_STYLES[path_approx]='fg=magenta,bold'

# Line load hook
zle-line-init() {
  # Enable autosuggestions automatically
  #zle autosuggest-start
}
zle -N zle-line-init

# Key-bindings
bindkey '^f' vi-forward-blank-word

# Fix LDAP issue
unsetopt cdablevars

# per-tab history
up-line-or-local-history() {
    zle set-local-history 1
    zle up-line-or-history
    zle set-local-history 0
}
zle -N up-line-or-local-history
down-line-or-local-history() {
    zle set-local-history 1
    zle down-line-or-history
    zle set-local-history 0
}
zle -N down-line-or-local-history

bindkey "^[[1;5A" up-line-or-history    # [CTRL] + Cursor up
bindkey "^[[1;5B" down-line-or-history  # [CTRL] + Cursor down

# Site mix-ins
MIX_INS=(
    $HOME/env/common/*
    $HOME/site-env/zsh/.zshrc
)
for mix_in in $MIX_INS; do
  if [[ -r $mix_in ]]; then
    source $mix_in
  fi
done
