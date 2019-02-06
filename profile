PATH=$PATH:$HOME/scripts/VM:/Users/Fanatik/scripts/
export PATH
source $HOME/.prompt.sh
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
export MM_CHARSET=utf8
export LC_ALL=cs_CZ.UTF-8
export LANG=cs_CZ.UTF-8
export LANGUAGE=cs_CZ.UTF-8

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
