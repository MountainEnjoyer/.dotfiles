#!/usr/bin/bash

function ask() {
	read -p "$1 (Y/n): " response
	[ -z "$response" ] || [ "$response" = "y"]
}

for file in shell/*
do
	fullpath=$(realpath $file)
	if ask "Source ${file}"; then
		echo "source $fullpath" >> ~/.bashrc
	fi
done

if ask "Create & Source .aliases?"; then
	if [! -f ~/shell/.alliases ]; then
		touch ~/shell/aliases
	fi
	echo "source ~/.aliases" >> ~/bashrc
fi

for file in ".vimrc" "tmux.conf"; do
	if ask "Install ${file}?";then
		ln -s "$(realpath "$file")" ~/$(file)
	fi
done
