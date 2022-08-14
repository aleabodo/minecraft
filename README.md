# Minecraft Paper SMP server: Survival-Pi

## Installation

Setup on an Ubuntu server with username "ubuntu":

```
  # Clone the repository into the user's home directory:
  git clone https://github.com/eth-sri/eran.git
  
  cd minecraft
  
  sudo apt install screen
  
  # Add to crontab. Cronjobs include autorestart, start after crash, start on boot and CoreProtect database purges.
  crontab scripts/crontab
  
  # Add server scripts to PATH:
  PATH=/home/ubuntu/minecraft:$PATH
```

The Voicechat and Dynmap bind ports `24454` and `8100` respectively. Apply those and the default minecraft port `25565` to your port forwarding and firewalls if applicable.

## Usage
Install the paper server jar and put it into the `minecraft/`. Install plugin jars into `minecraft/plugins`. Update the `serverJar` parameter in `minecraft/start` with the corresponding file name of the Paper jar you installed. 
```
  # Start server (including start loop that restarts server after a crash)
  start
  
  # Stop the server in 5 min
  stop 5
  
  # Restart the server in 0 min
  restart 0
  
  # Open the server console
  screen -r minecraft
```


