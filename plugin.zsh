#!/usr/bin/env zsh
# Zsh plugin that reloads the Mast TDE (Terminal Desktop Environment) using setloader
# Author: Aerodos12
# Date: 11-04-2021
 mreload()  {
    if [[ $1 == "all" ]]; then
	for setlFile in /etc/setloader/; do
	    source "/etc/setloader/$setFile.setl"
	done
	clear
	echo "All settings are now  loaded."
    else
	source "/etc/setloader/$1.setl";
	clear
	echo "$1 settings are now loaded."
    fi
}

autoload -U  mreload
