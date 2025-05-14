#!/bin/bash

# This is my personal terminal system menu. It keep all of my most used commands in
# a single location which I can call up at any time.
# Created 2023.6.9

# Load config variables
CONFIG_FILE="$(dirname "$0")/mcp.config"
if [ -f "$CONFIG_FILE" ]; then
  source "$CONFIG_FILE"
else
  echo "Missing configuration file: $CONFIG_FILE"
  exit 1
fi


function title (){

echo "▖  ▖    ▗       ▄▖    ▗     ▜   ▄▖             "
echo "▛▖▞▌▀▌▛▘▜▘█▌▛▘  ▌ ▛▌▛▌▜▘▛▘▛▌▐   ▙▌▛▘▛▌▛▌▛▘▀▌▛▛▌"
echo "▌▝ ▌█▌▄▌▐▖▙▖▌   ▙▖▙▌▌▌▐▖▌ ▙▌▐▖  ▌ ▌ ▙▌▙▌▌ █▌▌▌▌"
echo "                                      ▄▌       "
echo "                  **M.C.P.**                   "
echo "                                               "
echo "                  $HOSTNAME                    "
echo "                                               "

}

function mcp (){

clear
title
#say "Welcome $USER. Please make a selection."

while :
do

echo "*******************************"
echo " Hello $USER. Please make a selection."
echo " "
echo " 1) Applications "
echo " 2) Servers "
echo " 3) System Administration "
echo " 4) Get Stuff "
echo " 5) Hacking "
echo " 6) BSD Games"
echo " 7) AI"
echo " 99) Exit"
echo "*******************************"

read action
	case $action in

1) applications ;;
2) servers ;;
3) sysadmin ;;
4) getstuff ;;
5) ;;
6) ;;
7) ;;
86) hidden ;;
99) exit ;;

esac
done
}

function applications (){

clear
title

while :
do

echo "-------------------------------"
echo "MCP: APPLICATIONS"
echo "1) Web"
echo "2) Email"
echo "3) Weather"
echo "4) RSS - Newsboat"
echo "5) Music (cmus)"
echo "6) "
echo "7) "
echo "8) "
echo "9) Create QR Code"
echo " "
echo "Application Configs"
echo "70) Edit RSS URLs"
echo " "
echo "99) Main Menu"
echo "-------------------------------"

read subaction
	case $subaction in
1) lynx --accept_all_cookies https://duckduckgo.com;;
2) neomutt;;
3) curl wttr.in/$ZIP_CODE;;
4) newsboat -r -C ~/.newsboat/newsboat_config ;;
5) cmus ;;
6)  ;;
7)  ;;
8)  ;;
9) echo "Enter the QR code's text" && read code && echo "Enter an output filename" && read file && qrencode -s 6 -l H -o ~/Desktop/$file.png "$code" ;;


70) nano -c $PATH_TO_NEWSBOAT_URL ;;



99) mcp ;;

esac
done
}

function servers (){

clear
title

while :
do

echo "-------------------------------"
echo "MCP: SERVERS"
echo "1) $SERVER_1"
echo "2) $SERVER_2"
echo "3) $SERVER_3"
echo "99) Main Menu"
echo "-------------------------------"

read subaction
	case $subaction in
1) ssh SERVER_ADMIN_1@SERVER_IPADDRESS_1 ;;
2) ssh SERVER_ADMIN_2@SERVER_IPADDRESS_2 ;;
3) ssh SERVER_ADMIN_3@SERVER_IPADDRESS_3 ;;
99) mcp ;;

esac
done
}

function getstuff (){

clear
title

while :
do

echo "-------------------------------"
echo "MCP: GET STUFF"
echo "1) Videos from Youtube (downloads to current directory)"
echo "2) Music from Youtube (downloads to current directory)"
echo "3) Files - MP3"
echo "4) Files - JPG"
echo "5) Go to Downloads Directory"
echo "6) Entire Website"
echo "7) "
echo "8) "
echo "9) "
echo "15) WGET Dry Run"
echo " "
echo "20) Download A Youtube Playlist"
echo "21) Delete all Files in YT Playlist Folder"
echo " "
echo "99) Main Menu"
echo "-------------------------------"

read subaction
	case $subaction in
1)  echo "Enter the URL of the video, playlist or channel: " && read url && yt-dlp --no-check-certificate -o '%(title)s.%(ext)s' $url;;
2)  echo "Enter the URL of the video, playlist or channel: " && read url2 && yt-dlp --no-check-certificate -f140 -x --audio-format mp3 -o '%(title)s.%(ext)s' $url2;;
3)  echo "Enter your filetype. " && read filetype && echo "Enter your URL. " && read url && wget -r -nd --limit-rate=1m -A.$filetype $url;;
4)  echo "Enter the URL of the site you want to pillage " && read url && wget -r -nd -m -e robots=off --random-wait --continue --no-check-certificate --limit-rate=1m -A.jpg $url;;
5)  cd $DOWNLOADS_DIR && mc;;
6)  echo "Enter your URL: " && read url &&  httrack $url;;
7)  ;;
8)  ;;
9)  ;;

20) cd $YOUTUBE_FOLDER && yt-dlp --no-check-certificate -o '%(title)s.%(ext)s' $YOUTUBE_PLAYLIST;;
21) cd $YOUTUBE_FOLDER && rm * ;;

15)  echo " Enter the URL of the target site: " && read url && echo "Enter the filetype extension: " && read ext && wget -r  --no-clobber --spider --limit-rate=1m -A.$ext $url;;

99) mcp ;;

esac
done
}


function sysadmin (){

clear
title

while :
do

echo "-------------------------------"
echo "MCP: SYSTEM ADMINISTRATION"
echo "1) Clear Temp Files"
echo "2) Map Remote Dirs"
echo "3) Upload SSH Key to Remote"
echo "4) View Bash Aliases"
echo "5) Edit Bash Aliases"
echo "6) Edit Cronjobs"
echo "7) Install Latest Updates"
echo "8) See Available Updates"

echo "15) Fix Installations"
echo "20) Display GPU Info"
echo "21) Display Cronjob Logs "
echo "22) Block Host"
echo "23) System Monitor"

echo "   "
echo "Specialty Installs and Updates"
echo "30) Install Pre-Requsite Packages"
echo "31) Change Hostname"
echo "  "
echo "40) Create QRCode for Wifi"
echo "  "
echo "90) Empty Trash"
echo "99) Main Menu"
echo "-------------------------------"

read subaction
	case $subaction in
1)  sudo journalctl --rotate && sudo journalctl --vacuum-time=2d && cd ~/.cache/thumbnails && rm -r * && cd -;;
2)  sshfs $SERVER_ADMIN1@$SERVER_IP1:$SERVER_LOCAL_DIR1; sshfs $SERVER_ADMIN2@$SERVER_IP2:$SERVER_LOCAL_DIR2; sshfs $SERVER_ADMIN3@$SERVER_IP3:$SERVER_LOCAL_DIR3; sshfs $SERVER_ADMIN4@$SERVER_IP4:$SERVER_LOCAL_DIR4; ;;
3)  echo "Enter the host address " && read host && echo "Enter the username " && read user && ssh-copy-id -i ~/.ssh/id_rsa $user@$host;;
4)  less ~/.bash_aliases;;
5)  nano ~/.bash_aliases;;
6)  crontab -e;;
7)  sudo apt update && sudo apt upgrade -y && sudo snap refresh && sudo yt-dlp -U && sudo apt autoremove -y;;
8)  sudo apt list --upgradeable;;



15) sudo apt install -f;;

20) sudo lshw -C display;;
21) less /var/log/syslog | grep -w "cron" | less;;
22) echo "What site would you like to block? " && read host && echo "0.0.0.0      $host" >> /etc/hosts;;
23) btop;;

30) sudo apt install -y btop newsboat cmus lynx yt-dlp tmux;;

31) echo "Please enter the new hostname: " && read newhostname && sudo hostnamectl set-hostname $newhostname && echo "Be sure to open /etc/hosts to edit for new hostname!" ;;

40) echo "Please enter the SSID." && read ssid && echo "Please enter the password." && read pass && qrencode -s 6 -l H -o "wifi.png" 'WIFI:T:WPA2;S:$ssid;P:$pass;;';;


99) mcp ;;

esac
done
}

# This submenu serves to provide actions which need not be visible to another user who may have come
# across this script.


function hidden (){

clear
title

while :
do

echo "-------------------------------"
echo "SECRET MENU"
echo "1) $SECRET_FUNCTION1"
echo "2) $SECRET_FUNCTION2"
echo "3) $SECRET_FUNCTION3"
echo "4) $SECRET_FUNCTION4"
echo "5) $SECRET_FUNCTION5"
echo "6) $SECRET_FUNCTION6"
echo "7) $SECRET_FUNCTION7"
echo "8) $SECRET_FUNCTION8"
echo "99) Main Menu"
echo "-------------------------------"

read subaction
	case $subaction in
1)  $SECRET_FUNCTION_COMMAND1;;
2)  $SECRET_FUNCTION_COMMAND2;;
3)  $SECRET_FUNCTION_COMMAND3;;
4)  $SECRET_FUNCTION_COMMAND4;;
5)  $SECRET_FUNCTION_COMMAND5;;
6)  $SECRET_FUNCTION_COMMAND6;;
7)  $SECRET_FUNCTION_COMMAND7;;
8)  $SECRET_FUNCTION_COMMAND8;;
99) mcp ;;

esac
done
}

mcp
