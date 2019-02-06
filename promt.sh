#!/bin/bash

S=$?
#barvy
END="\[\e[0m\]"
RED="\[\033[31;3m\]"
CYAN="\[\e[36;1m\]"
GREEN="\[\e[32;1m\]"
YELLOW="\[\e[33;1m\]"
WHITE="\[\e[37;1m\]"


# Based on: https://github.com/jimeh/git-aware-prompt
find_git_branch() {
  # Based on: http://stackoverflow.com/a/13003854/170413
  local branch
  if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
    if [[ "$branch" == "HEAD" ]]; then
      branch=' detached*'
    fi
    git_branch=" [$branch]"
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
    git_dirty="*"
  else
    git_dirty=""
  fi
}

PROMPT_COMMAND="find_git_branch; find_git_tag; find_git_dirty; $PROMPT_COMMAND"

export PS1="\[\e]0;\h:\w\a\007\]\h:\u\w${GREEN}\$git_branch${END}\$git_tag${RED}\$git_dirty${END}$ "


#alias
alias rmr='rm -Rf'
alias lsa='ls -a'
alias lsla='ls -la'
alias doco=docker-compose
