#!/bin/bash

# Aliases
alias sudo='sudo '	# This allows sudo to run aliases
alias clear='clear && fcow -r 2>/dev/null'
alias ll='ls -hAlF --color=auto'
alias calc='bc -l <<<'

# Functions
mkcd() { mkdir -p "$1" && cd "$1" ;}

# Prompt
export PS1="\n\[$(tput sgr0)\]\[\033[38;5;10m\]\u\[$(tput sgr0)\]@\[\033[38;5;13m\]\W\[$(tput sgr0)\] \[\033[38;5;6m\]\$(git branch 2>/dev/null |sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\n\\$ "
export PROMPT_COMMAND='echo -en "\033]0; $("pwd") \a"'

# To prevent future accidents
alias chmod='chmod --preserve-root'
alias chown='chown --preserve-root'
alias chgrp='chgrp --preserve-root'
