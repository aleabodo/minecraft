#!/bin/bash

var=$1
while true; do
	if [[ $var -eq 0 ]]; then
		screen -SX minecraft stuff "bxs bc §7Restarting §6now! §7Back online in a few minutes.^M"
		sleep 10s
		echo "Restarting now!"
		screen -SX minecraft stuff "stop^M"
		exit
	else
		echo "Restart in $var minutes."
		screen -SX minecraft stuff "bxs bc §7Restart in §6$var minutes§7.^M"
	fi
	var=$((var-1))
	sleep 60s
done
