GREEN="\[\e[0;32m\]"
YELLOW="\[\e[0;33m\]"
BLUE="\[\e[0;34m\]"
PURPLE="\[\e[0;35m\]"
RED="\[\e[0;31m\]"
GREY="\[\e[0;36m\]"
WHITE="\[\e[00m\]"

#if [[ $S -eq 0 ]]; then
#        DOLLAR="${GREEN}\$"
#else
#        DOLLAR="${RED}\$"
#fi

export PROMPT_COMMAND='
	GITBRANCH=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
	GITTAG=$(git describe --tags 2> /dev/null)
	if [ "$(git rev-parse --abbrev-ref HEAD 2> /dev/null)" != "" ]; then
		if git diff-index --quiet HEAD --; then
		    export PS1="${YELLOW}\u${GREEN}@${RED}\h${BLUE}: ${PURPLE}\w ${GREEN}|${YELLOW}${GITBRANCH}${GREEN}|${YELLOW}${GITTAG}\n${GREY}\$ ${WHITE}"
		else
		    export PS1="${YELLOW}\u${GREEN}@${RED}\h${BLUE}: ${PURPLE}\w ${RED}*${GREEN}|${YELLOW}${GITBRANCH}${GREEN}|${YELLOW}${GITTAG}\n${GREY}\$ ${WHITE}"
		fi
	else
		export PS1="${YELLOW}\u${GREEN}@${RED}\h${BLUE}: ${PURPLE}\w\n${GREY}\$ ${WHITE}"
	fi
'

export EDITOR="vim"
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

alias ls='ls -F'
alias la='ls -laF'
alias rmr='rm -rf'
alias rs='rsync -av --delete'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
