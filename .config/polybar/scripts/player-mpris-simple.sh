#!/bin/sh

player_status=$(playerctl status 2> /dev/null)

print_metadata () {
	player_title=$(playerctl metadata title 2> /dev/null)
	player_artist=$(playerctl metadata artist 2> /dev/null)
	if [ "$player_status" = "Playing" ]; then
		echo ⏵${player_artist::15} - ${player_title::20}
	elif [ "$player_status" = "Paused" ]; then
		echo ⏸${player_artist::15} - ${player_title::20}
	fi
}

if [ "$player_status" = "" ]; then
	echo '⏹No players found'
else
	print_metadata
fi
