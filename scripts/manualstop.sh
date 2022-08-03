#!/bin/bash

var=$1
while true; do
	if [[ $var -eq 0 ]]; then
		screen -SX minecraft stuff "bxs bc §7Stopping §6now!^M"
		sleep 10s
		echo "Stopping now!"
		screen -XS mcLoop quit
		screen -SX minecraft stuff "stop^M"
		exit
	else
	    echo "Server stop in $var minutes"
	    screen -SX minecraft stuff "bxs bc §7Server stop in §6$var minutes§7.^M"
	fi
	var=$((var-1))
	sleep 60s
done
