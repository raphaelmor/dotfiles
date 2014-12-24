#!/usr/bin/env bash

function e_header()   { echo -e "\n\033[1m$@\033[0m"; }
function e_success()  { echo -e " \033[1;32m✔\033[0m  $@"; }
function e_error()    { echo -e " \033[1;31m✖\033[0m  $@"; }
function e_arrow()    { echo -e " \033[1;34m➜\033[0m  $@"; }

function confirm()
{
	echo -n "$@ "
	read -e answer
	for response in y Y yes YES Yes Sure sure SURE OK ok Ok
	do
		if [ "_$answer" == "_$response" ]
		then
			return 0
		fi
	done

	# Any answer other than the list above is considerred a "no" answer
	return 1
}

function link_file()
{
	e_arrow "Symlinking $PWD/$1/$2 to $HOME/$2"
	ln -s "$PWD/$1/$2" "$HOME/$2"
	if [ $? -ne 0 ]
	then
		e_error "Cannont symlink $2"
		exit 1
	fi
}

function backup_file()
{
	if [[ -f $1 ]]; then
		e_arrow "Backing up $1 to $1.back"
		rm $1.bak
		mv $1 $1.bak
	fi
}

function backup_dir()
{
	if [[ -d $1 ]]; then
		e_arrow "Moving $1 directory to $1.bak"
		rm -rf $1.bak
		mv $1 $1.bak
	fi
}

e_header 'Dotfiles - Raphaël Mor - http://raphaelmor.github.io/'

e_arrow "This will remove any configuration file and replace them with default config files."
confirm "Are you sure?"

if [ $? -ne 0 ]; then
	e_error "You chickened out! Aborting : No file was modified"
	exit 1
fi

e_header 'Checking for prerequisites'
if [[ ! "$(type -P gcc)" ]]; then
	e_error "Xcode or the Command Line Tools for XCode must be installed first."
	exit 1
fi

e_success "Xcode or Command Line Tools for Xcode are installed"

if [[ ! "$(type -P git)" ]]; then
	e_error "Git should be installed. It isn't. Aborting."
	exit 1
fi

e_success "Git is installed"

e_header 'Vim files'

backup_file ~/.vimrc
backup_dir ~/.vim
 
for file in .vim .vimrc
do
	link_file vim $file
done

e_success "Vim files successfully symlinked"

e_arrow "To finish this installation, please install Tomorrow Night Eighties theme for Terminal : https://github.com/chriskempson/tomorrow-theme/blob/master/OS%20X%20Terminal/Tomorrow%20Night%20Eighties.terminal"

e_header "All done!"

# e_success "Success !"
# e_error "Error !"
# e_arrow "Arrow !"
