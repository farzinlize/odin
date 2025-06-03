#!/bin/bash

read cmd <<< "$(zenity --entry --text='Enter command: [s, status], pull, push')"

case $cmd in
	s | status)
		git status
		;;
	pull)
		git pull origin main
		;;
	push)
		git add .
		git commit -m "auto commit"
		git push origin main
		;;
	*)
		echo "unknown command $cmd, only recognize pull, push or status and s"
		;;
esac
