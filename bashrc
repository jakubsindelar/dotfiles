#Encoging
export MM_CHARSET=utf8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_TIME=”en_US.UTF-8
export LC_COLLATE=”en_US.UTF-8″
export LC_NUMERIC=”en_US.UTF-8″
export LC_MONETARY=”en_US.UTF-8″
export LC_MESSAGES=”en_US.UTF-8″
#Colors
GREEN="\[\e[0;32m\]"
YELLOW="\[\e[0;33m\]"
BLUE="\[\e[0;34m\]"
PURPLE="\[\e[0;35m\]"
RED="\[\e[0;31m\]"
GREY="\[\e[0;36m\]"
WHITE="\[\e[00m\]"
#Main Editor
export EDITOR="nano"
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
export GREP_OPTIONS='--color=auto'
#No mail checking
unset MAILCHECK
#GIT
# Based on: https://github.com/jimeh/git-aware-prompt
find_git_branch() {
  # Based on: http://stackoverflow.com/a/13003854/170413
  local branch
  if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
    if [[ "$branch" == "HEAD" ]]; then
      branch=' detached*'
    fi
    git_branch=" $branch"
  else
    git_branch=""
  fi
}
find_git_tag() {
  local tag
  if tag=$(git describe --abbrev=0 --tags 2> /dev/null); then
    git_tag=":$tag"
  else
    git_tag=""
  fi
}
find_git_dirty() {
  local status=$(git status --porcelain 2> /dev/null)
  if [[ "$status" != "" ]]; then
    git_dirty="'"
  else
    git_dirty=""
  fi
}

PROMPT_COMMAND="find_git_branch; find_git_tag; find_git_dirty; $PROMPT_COMMAND"

if [ "$myPrimaryDevice" == 1 ]; then
  export PS1="\[\e]0;$USER@macbook:`basename $PWD`\007\]\u@macbook:\w\$git_branch\$git_tag\$git_dirty$ "
else
  export PS1="\[\e]0;$USER@`hostname -s`:`basename $PWD`\007\]\u@\h:\w\$git_branch\$git_tag\$git_dirty$ "
fi

#Promt
case $TERM in
    xterm*)
        echo -ne "\033]0;"$USER@$HOSTNAME"\007"
        ;;
esac

PROMPT_COMMAND="source $HOME/.configs/prompt.sh"


