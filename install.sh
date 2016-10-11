#!/bin/bash

# delcare constant paths
declare -r BASE_PATH=$(pwd)
declare -r VIMRC_PATH=$BASE_PATH/.vimrc
declare -r VIM_PATH=$BASE_PATH/vim
declare -r TMUX_PATH=$BASE_PATH/.tmux.conf
declare -r SCRIPTS_PATH=$BASE_PATH/scripts
declare -r BASH_PATH=$BASE_PATH/.bash
declare -r BASHRC_PATH=$BASE_PATH/.bashrc
declare -r PROFILE_PATH=$BASE_PAHT/.profile

echo -e "[#] Prepare installing the dotfiles"

sleep 1

# make some series of checks
# to make sure the user is executing the script from
# this directory and not other
if [ ! -f $VIMRC_PATH ]; then
	echo -e "[!] Cannot find vimrc config file"
	exit 1
fi


if [ ! -d $VIM_PATH ]; then
	echo -e "[!] Cannot find vim directory file"
	exit 1
fi


if [ ! -f $TMUX_PATH ]; then
	echo -e "[!] Cannot find tmux config file"
	exit 1
fi

if [ ! -d $SCRIPTS_PATH ]; then
	echo -e $SCRIPTS_PATH
	echo -e "[!] Cannot find scripts directory"
	exit 1
fi

command -v rsync >/dev/null 2>&1 || { 
	echo >&2 "[!] I rsync but it's not installed"
	exit 1
}

# make the installation possible
rsync -r --info=progress2 $VIM_PATH $HOME
rsync -r --info=progress2 $VIMRC_PATH $HOME
rsync -r --info=progress2 $TMUX_PATH $HOME
rsync -r --info=progress2 $SCRIPTS_PATH $HOME
rsync -r --info=progress2 $BASH_PATH $HOME
rsync -r --info=progress2 $BASHRC_PATH $HOME

echo -e "[#] Make the scripts executable"
chmod u+x $HOME/scripts


echo -e "[#] Scripts installed successfully"
