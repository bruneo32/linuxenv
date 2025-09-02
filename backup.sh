#!/bin/bash

sudo tar czf /tmp/backup.tar.gz \
	--exclude=/tmp/backup.tar.gz \
	--exclude=/dev \
	--exclude=/mnt \
	--exclude=/proc \
	--exclude=/sys \
	--exclude=/tmp \
	--exclude=/media \
	--exclude=/lost+found \
	/
