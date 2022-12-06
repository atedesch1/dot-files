#! /bin/sh
output='/home/atedesch1/Pictures/screenshots/%Y-%m-%d-%T-screenshot.png'

case "$1" in
	"select") sleep 0.2 && scrot "$output" --select --line mode=edge || exit ;;
	"window") scrot "$output" --focused --border || exit ;;
	*) scrot "$output" || exit ;;
esac