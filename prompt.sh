#!/bin/bash

S=$?
#barvy
END="\[\e[0m\]"
RED="\[\033[31;3m\]"
CYAN="\[\e[36;1m\]"
GREEN="\[\e[32;1m\]"
YELLOW="\[\e[33;1m\]"
WHITE="\[\e[37;1m\]"


#pokud příkaz vrátí chybu zobrazí se $ červeně
if [[ $S -eq 0 ]]; then
        DOLLAR="${GREEN}#"
else
        DOLLAR="${RED}#"
fi

#obsah
PS1="${CYAN}\u${END}${WHITE}@${END}${RED}\h${END}${GREEN}\w${END}${DOLLAR}${END} "
#alias
alias rmr='rm -Rf'
alias lsa='ls -a'
alias lsla='ls -la'
