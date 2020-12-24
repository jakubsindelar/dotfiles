# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/Fanatik/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME="cloud"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
  DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
  DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
Plugins=(docker git git-extras bundler rake sudo osx ssh-agent last-working-dir gem bower npm brew node tmux tmuxinator)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
#export PROMPT= "%d"
# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


export LC_ALL=en_US.UTF-8;
alias doco="docker-compose"
alias rmr="rm -r"
alias rmrf="rm -rf"
alias lsl="ls -la"
alias gs="git status"
alias gd="git diff"
alias gpu="git push"
alias gpl="git pull"
alias gch="git checkout"
alias rbenvu="rbenv global"
alias ssh_tunnels="ps ax | grep ssh | grep -v grep"
alias uucp="cat ~/.uu/config/uu-client.properties"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
source ~/.dotfiles/tmuxinator.zsh
export PATH="$HOME/.dotfiles/bin:$PATH"
###############################################################################################################
#####################################  UNICORN-DTC  ###########################################################
###############################################################################################################
alias dm="docker-machine"
alias 'dsa'='docker start $(docker ps -aq)'
export C3_GIT_REPO=~/Repository/Unicorn/c3-server
export OR_GIT_REPO=~/Repository/Unicorn/uu_cloudg01_registry-server-ruby
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/bin/:$PATH"
eval "$(rbenv init -)"
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i
export C3_CMD=~/Repository/Unicorn/c3-server/uu_cloud-devenv/docker/c3/uu_c3-cmd.war
export C3_SCRIPTS=~/Repository/Unicorn/c3-server/uu_cloud-devenv/docker/c3/uu_c3-scripts.zip
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH=$PATH:/opt/gradle/gradle-5.3/bin
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export DTC_RAKE_PASSWD="21-6164-1"
export C3_DIR=c3-server
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
