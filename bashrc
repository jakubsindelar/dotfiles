GREEN="\[\e[0;32m\]"
YELLOW="\[\e[0;33m\]"
BLUE="\[\e[0;34m\]"
PURPLE="\[\e[0;35m\]"
RED="\[\e[0;31m\]"
GREY="\[\e[0;36m\]"
WHITE="\[\e[00m\]"


export EDITOR="nano"
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
export GREP_OPTIONS='--color=auto'

unset MAILCHECK

export PATH=~/bin/:$PATH

case $TERM in
    xterm*)
        echo -ne "\033]0;"$USER@$HOSTNAME"\007"
        ;;
esac

PROMPT_COMMAND="source $HOME/configs/.prompt.sh"
