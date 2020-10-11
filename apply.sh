#!/bin/sh

for i in "$@"; do
	echo $i
  case $i in
    --force=*)
      FORCE="${i#*=}"
			echo $FORCE
    ;;
		--help)
      help
    ;;
  esac
done

makelink() {
	echo $FORCE
	if [ -f "$2" ] && [ -z "$FORCE" ]; then
    echo "File $2 already exists"
	elif [ -d "$2" ] && [ -z "$FORCE" ]; then
		echo "Directory $2 already exists"
	else
		if [ -z "$FORCE" ]; then
			if [ -z $3 ];then
				link_file $1 $2
			else
				link_dir $1 $2
			fi
		else
		if [ -z "$3" ]; then
			link_force_file $1 $2
		else
			link_force_dir $1 $2
		fi
		fi
	fi
}

link_file() {
		echo "Creating link from $1 to $2"
		ln -sf $1 $2
}

link_dir() {
		echo "Creating link from $1 to $2"
		ln -sf $1 $2
}

link_force_file() {
	echo "Removing $2"
	rm -rf $1
	echo "Creating link from $1 to $2"
	ln -sf $1 $2
}

link_force_dir() {
	echo "Removing $2"
	rm -rf $1
	echo "Creating link from $1 to $2"
	ln -sf $1 $2
}

help () {
	echo "Usage:
		./$(basename "$0") [PARAMETERS]
	Where:
	--force=true
	--help show help

	Example:
	./$(basename "$0") --force=true"
	exit 1
}

check_imput_params() {
if [ "$FORCE" ]; then
	if [ "$FORCE" -ne "true" ];then
		help
	fi
fi
}

check_imput_params $1 $2 $DIR $FORCE
# ssh
makelink $HOME/.dotfiles/authorized_keys $HOME/.ssh/authorized_keys
makelink $HOME/.dotfiles/ssh_config $HOME/.ssh/config
makelink $HOME/.dotfiles/plus4unet.config $HOME/.ssh/plus4unet.config
makelink $HOME/.dotfiles/ssh_keys/dev-uuc3_id_rsa $HOME/.ssh/dev-uuc3_id_rsa
makelink $HOME/.dotfiles/ssh_keys/dev-uuc3_id_rsa.pub $HOME/.ssh/dev-uuc3_id_rsa.pub
makelink $HOME/.dotfiles/ssh_keys/id_codebase_uuee $HOME/.ssh/id_codebase_uuee
makelink $HOME/.dotfiles/ssh_keys/id_codebase_uuee.pub $HOME/.ssh/id_codebase_uuee.pub
makelink $HOME/.dotfiles/ssh_keys/id_rsa $HOME/.ssh/id_rsa
makelink $HOME/.dotfiles/ssh_keys/id_rsa.pub $HOME/.ssh/id_rsa.pub
makelink $HOME/.dotfiles/ssh_keys/id_rsa_uuadmin $HOME/.ssh/id_rsa_uuadmin
# bash
makelink $HOME/.dotfiles/bashrc $HOME/.bashrc
# git
makelink $HOME/.dotfiles/gitconfig $HOME/.gitconfig
makelink $HOME/.dotfiles/gitignore $HOME/.gitignore
makelink $HOME/.dotfiles/gitignore_global $HOME/.gitignore_global
# vim
makelink $HOME/.dotfiles/vimrc $HOME/.vimrc
makelink $HOME/.dotfiles/viminfo $HOME/.vimrcinfo

# #zsh
makelink $HOME/.dotfiles/zshrc $HOME/.zshrc
# tmux && tmuxinator
makelink $HOME/.dotfiles/tmux.conf $HOME/.tmux.conf
makelink $HOME/.dotfiles/tmuxinator $HOME/.tmuxinator true
