#!/bin/bash

runmsg=true
serverJar=$2 #Name of the server jar.
location=$1 #Location of the server jar.

while true; do
	if [ -z "$(lsof -t ${location}${serverJar})" ]; then
		echo $(date '+%Y-%m-%d--%H-%M-%S-')": ${serverJar} - Pid Not Found, Starting!"
		cd $location
		screen -dmS minecraft java -Xms6000M -Xmx6000M -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar $serverJar nogui
		runmsg=true
	else
		if [ $runmsg = true ]; then
			echo $(date '+%Y-%m-%d--%H-%M-%S-') ": ${serverJar} - Pid is running!"
			runmsg=false
		fi
	fi

	sleep 30
done

