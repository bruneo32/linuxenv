#!/bin/bash

# Aliases
alias clear='clear && fcow -r 2>/dev/null'
alias ll='ls -hAlF --color=auto'
alias calc='bc -l <<<'
alias diskusage='du -Phsx * .* 2>/dev/null'

# Functions
mkcd() { mkdir -p "$1" && cd "$1" ;}

# Custom mPrompt
export PS1="\n\[$(tput sgr0)\]\[\033[38;5;10m\]\u\[$(tput sgr0)\]@\[\033[38;5;13m\]\W\[$(tput sgr0)\] \[\033[38;5;6m\]\$(git branch 2>/dev/null |sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\n\\$ "
export PROMPT_COMMAND='echo -en "\033]0; $("pwd") \a"'
