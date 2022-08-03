#!/bin/bash

screen -SX minecraft stuff "bxs bc §6In 1 minute§7 the server will §6purge§7 all logs older than 30 days. Rollbacks of changes older than 30 days will no longer be possible. The purge might cause a lag spike. ^M"
sleep 60
screen -SX minecraft stuff "bxs bc §7Purging §6now§7! ^M"
screen -SX minecraft stuff "co purge t:30d #optimize ^M"
