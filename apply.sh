#!/bin/sh
makelink() {
	echo "$3\t$2";
	rm -f $2;
	ln -f $1 $2;
	chown -f $USER:$USER $2;
	chmod -f $3 $2;
}
# ssh
makelink $HOME/.configs/authorized_keys $HOME/.ssh/authorized_keys 700
makelink $HOME/.configs/ssh_config $HOME/.ssh/config 700
# bash
makelink $HOME/.configs/bashrc $HOME/.bashrc 770
# git
makelink $HOME/.configs/gitconfig $HOME/.gitconfig 750
