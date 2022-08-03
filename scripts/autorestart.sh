#!/bin/bash

countdown=15 #Restart countdown in minutes

while true; do
	if [ $countdown -eq 0 ]; then
        echo "Restarting Now!"
        screen -SX minecraft stuff "bxs bc §7Restarting §6now! Will be back in a few minutes.^M"
        sleep 10s
        screen -SX minecraft stuff "stop^M"
        exit
	else
		echo "Daily restart in $countdown minutes"
		screen -SX minecraft stuff "bxs bc §7Daily restart in §6${countdown} minutes§7 (every day at this time)^M"
	fi
	countdown=$((countdown-1))
	sleep 60s
done
