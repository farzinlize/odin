#!/bin/bash

read cmd extra <<< "$(zenity --entry --text='Enter command: [s, status], pull, push')"

case $cmd in
	s | status)
		git status
		;;
	pull)
		git pull origin main
		;;
	push)
		git add .
		git commit -m "auto commit $extra"
		git push origin main
		;;
	*)
		echo "unknown command $cmd, only recognize pull, push or status and s"
		;;
esac
