#!/bin/bash

TMPHEADER=/tmp/discord_rh.txt
TMPDEBFILE=/tmp/discord_new.deb

curl -s -D $TMPHEADER 'https://discord.com/api/download?platform=linux&format=deb' >/dev/null
if [[ -f $TMPHEADER ]]; then
	DOWNLOAD_URL=$(awk -F': ' '/^location: /{print $2}' $TMPHEADER | tr -d '\r')

	echo "Detected: $DOWNLOAD_URL"
	read -n1 -p "Do you want to download and install this version? [Y/n] " opt_yn
	echo

	if [[ $opt_yn == "" || $opt_yn == "Y" || $opt_yn == "y" ]]; then
		wget $DOWNLOAD_URL -O $TMPDEBFILE
		sudo apt install $TMPDEBFILE
	fi
else
	echo "ERR! Cannot get $TMPHEADER" >&2
fi
