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
export PROMPT_COMMAND='
  GITBRANCH=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
  GITTAG=$(git describe --tags 2> /dev/null)
  if [ "$(git rev-parse --abbrev-ref HEAD 2> /dev/null)" != "" ]; then
    if git diff-index --quiet HEAD --; then
        export PS1="${CYAN}\u${END}${WHITE}@${END}${RED}\h${END}${GREEN}\w${END}${DOLLAR} ${YELLOW}${GITBRANCH} ${END}"
    else
        export PS1="${CYAN}\u${END}${WHITE}@${END}${RED}\h${END}${GREEN}\w${END}${DOLLAR} ${RED}*${YELLOW}${GITBRANCH} ${END}"
    fi
  else
    export PS1="${CYAN}\u${END}${WHITE}@${END}${RED}\h${END}${GREEN}\w${END}${DOLLAR}${END} "
  fi
'


#alias
alias dev='cd ~/dev/fiktivni_firma'
alias rmr='rm -Rf'
alias lsa='ls -a'
alias lsla='ls -la'
alias home='cd ~'

