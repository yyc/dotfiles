#!/bin/bash
if [ $# == 0 ]; then
	echo "Usage: ./atom-packages.sh backup|restore"
elif [ $1 = "backup" ]; then
	apm list --installed --bare >atom/package.list
	echo $1
	echo "backed up installed package list to atom/package.list"
elif [ $1 = "restore" ]
then
	echo "Installing.."
	apm install --packages-file atom/package.list
else
	echo "Usage: ./atom-packages.sh backup|restore"
fi
