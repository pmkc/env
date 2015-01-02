#!/usr/bin/env zsh

source ~/env/lib/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle python
antigen bundle tmux

# Fish-like bundles
antigen bundle zsh-users/fizsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle tarruda/zsh-autosuggestions

# Load the theme.
antigen theme fishy

# Tell antigen that you're done.
antigen apply


# history-substring-search config
# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

# autosuggestions config
# Enable autosuggestions automatically
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init
bindkey '^f' vi-forward-blank-word
bindkey '^T' autosuggest-toggle

# My stuff

# Fix LDAP issue
unsetopt cdablevars
