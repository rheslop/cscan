#!/bin/bash

if [[ $UID -ne 0 ]]; then
	echo "This script must be run as root."
	exit
fi

INSTALL_DIR=/opt/cscan

if [ "$1" == "" ]; then

	echo "+------------------------------------------"
	echo "|"
	echo "| This script will install custom scripts"
	echo "| on your local filesystem in $INSTALL_DIR"
	echo "|"
	echo "| Would you like to continue? [y|n]"
	echo "|"
	echo "+------------------------------------------"
	echo ""
	read -p "~> " RESPONSE
	case $RESPONSE in
		y|Y)
			mkdir -p $INSTALL_DIR/scans
			cp ./cscan $INSTALL_DIR
			ln -sf $INSTALL_DIR/cscan /usr/bin/cscan
		;;
		n|N)
			echo "Aborting."
			exit
		;;
		*)
			echo "$RESPONSE not recognized...aborting."
			exit
		;;
	esac

else

	if [ $1 == uninstall ]; then
		rm -rf $INSTALL_DIR
		rm -rf /usr/bin/cscan
	else
		echo "$1 is not a recognized option."
	fi
fi

