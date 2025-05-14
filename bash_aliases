#downloads
alias ytmp3="yt-dlp --no-check-certificate -x --audio-format mp3 -o '%(title)s.%(ext)s'"
alias ytvid="yt-dlp --no-check-certificate --cookies-from-browser firefox -o '%(title)s.%(ext)s'"
alias getpdfs='wget -r -nd -nc --no-check-certificate --limit-rate=1m -A.pdf'
alias getmp3s='wget -r -nd -nc --no-check-certificate --limit-rate=1m -A.mp3'
alias getpics='wget -r -nd -nc -m -e robots=off --random-wait --continue --no-check-certificate --limit-rate=1m -A.jpg'
alias getweb='httrack'


#file utils
alias hmdir='sshfs local/ username@IPADDRESS:/path/to/remote/dir'
alias rss-sub='nano ~/.newsboat/urls'
alias aliases='less ~/.bash_aliases'
alias deluge-clear='rm ~/.config/deluge/cmd_line.hist1; touch ~/.config/deluge/cmd_line.hist1'
alias renameall="rename y'/A-Z/a-z/' *; rename y'/ /./' *; rename y'/\_/./' *"
alias renumber='ls -v | cat -n | while read n f; do mv -n "$f" "$n.mp4"; done'


	# https://linuxhandbook.com/clear-systemd-journal-logs/
 

# Directories
alias 0='cd ~/path/to/dir'
alias 10='cd ~/path/to/dir'
alias 20='cd ~/path/to/dir'
alias 28='cd ~/path/to/dir'
alias 30='cd ~/path/to/dir'
alias 40='cd ~/path/to/dir'
alias 50='cd ~/path/to/dir'
alias 60='cd ~/path/to/dir'
alias 70='cd ~/path/to/dir'
alias 80='cd ~/path/to/dir'
alias 83='cd ~/path/to/dir'
alias 90='cd ~/path/to/dir'
alias downloads="cd ~/home/$USERNAME/Downloads/"


#remote systems
alias server1='ssh username@IPADDRESS'
alias server2='ssh username@IPADDRESS'


#remote directories
alias remotes='sshfs local/ username@IPADDRESS:/path/to/remote/dir; sshfs local/ username@IPADDRESS:/path/to/remote/dir; sshfs local/ username@IPADDRESS:/path/to/remote/dir'

#applications
alias web='lynx --accept_all_cookies https://duckduckgo.com'
alias weather='curl wttr.in/[ZIPCODE]'
alias terminal='tmux -u'
alias rss='newsboat -C ~/.newsboat/newsboat_config'
alias xlm='curl rate.sx/xlm'
alias btc='curl rate.sx/btc'
alias ada='curl rate.sx/ada' 
alias bible='bible.sh'
alias dict='dict -d gcide'
alias ls='ls --color=auto'
alias delugestart='deluged && sleep 60 && deluge-console'

# System Maintenance
alias aptup='sudo apt update && sudo apt upgrade -y && yt-dlp -U && sudo apt autoremove -y'
alias aptupd='sudo apt update'
alias aptupg='sudo apt upgrade'
alias aptin='sudo apt install -y'
alias aptrm='sudo apt rm'
alias aptauto='sudo apt autoremove'
alias cacheclear='cd ~/.cache/thumbnails && rm -r *'
alias clearlogs='sudo journalctl --rotate && sudo journalctl --vacuum-time=2d'

#utilities
alias vpnip='curl ifconfig.co/city && curl ip.me'
alias search='sudo apt-cache search'
alias listapps='for app in /usr/share/applications/*.desktop do echo "${app:24:-8}" done | less'
alias work='nano -c'

#games
alias gameroom='ssh gameroom@bitreich.org'
alias tron='ssh sshtron.zachlatta.com'

#caesar ciphers encode
alias rot2="tr 'c-za-bC-ZA-B’ 'a-zA-Z’"
alias rot3="tr 'd-za-cD-ZA-C’ 'a-zA-Z’"
alias rot4="tr 'e-za-dE-ZA-D’ 'a-zA-Z’"
alias rot5="tr 'f-za-eF-ZA-E’ 'a-zA-Z’"
alias rot6="tr 'g-za-fG-ZA-F’ 'a-zA-Z’"
alias rot7="tr 'h-za-gH-ZA-G’ 'a-zA-Z’"
alias rot8="tr 'i-za-hI-ZA-H’ 'a-zA-Z’"
alias rot9="tr 'j-za-iJ-ZA-I’ 'a-zA-Z’"
alias rot10="tr 'k-za-jK-ZA-J’ 'a-zA-Z’"
alias rot11="tr 'l-za-kL-ZA-K’ 'a-zA-Z’"
alias rot12="tr 'm-za-lM-ZA-L’ 'a-zA-Z’"
alias rot13="tr 'n-za-mN-ZA-M’ 'a-zA-Z’"
alias rot14="tr 'o-za-nO-ZA-N’ 'a-zA-Z’"
alias rot15="tr 'p-za-oP-ZA-O’ 'a-zA-Z’"
alias rot16="tr 'q-za-pQ-ZA-P’ 'a-zA-Z’"
alias rot17="tr 'r-za-qR-ZA-Q’ 'a-zA-Z’"
alias rot18="tr 's-za-rS-ZA-R’ 'a-zA-Z’"
alias rot19="tr 't-za-sT-ZA-S’ 'a-zA-Z’"
alias rot20="tr 'u-za-tU-ZA-T’ 'a-zA-Z’"
alias rot21="tr 'v-za-uV-ZA-U’ 'a-zA-Z’"
alias rot22="tr 'w-za-vW-ZA-V’ 'a-zA-Z’"
alias rot23="tr 'x-za-wX-ZA-W’ 'a-zA-Z’"
alias rot24="tr 'y-za-xY-ZA-X’ 'a-zA-Z’"
alias rot25="tr 'z-za-yZ-ZA-Y’ 'a-zA-Z’"

#caesar ciphers decode
alias unrot2="tr 'a-zA-Z' 'c-za-bC-ZA-B’"
alias unrot3="tr 'a-zA-Z’ 'd-za-cD-ZA-C’"
alias unrot4="tr 'a-zA-Z’ 'e-za-dE-ZA-D’"
alias unrot5="tr 'a-zA-Z’ 'f-za-eF-ZA-E’"
alias unrot6="tr 'a-zA-Z’ 'g-za-fG-ZA-F’"
alias unrot7="tr 'a-zA-Z’ 'h-za-gH-ZA-G’"
alias unrot8="tr 'a-zA-Z’ 'i-za-hI-ZA-H’"
alias unrot9="tr 'a-zA-Z’ 'j-za-iJ-ZA-I’"
alias unrot10="tr 'a-zA-Z' 'k-za-jK-ZA-J'"
alias unrot11="tr 'a-zA-Z’ 'l-za-kL-ZA-K’"
alias unrot12="tr 'a-zA-Z’ 'm-za-lM-ZA-L’"
alias unrot13="tr 'a-zA-Z’ 'n-za-mN-ZA-M’"
alias unrot14="tr 'a-zA-Z’ 'o-za-nO-ZA-N’"
alias unrot15="tr 'a-zA-Z’ 'p-za-oP-ZA-O’"
alias unrot16="tr 'a-zA-Z’ 'q-za-pQ-ZA-P’"
alias unrot17="tr 'a-zA-Z’ 'r-za-qR-ZA-Q’"
alias unrot18="tr 'a-zA-Z’ 's-za-rS-ZA-R’"
alias unrot19="tr 'a-zA-Z’ 't-za-sT-ZA-S’"
alias unrot20="tr 'a-zA-Z’ 'u-za-tU-ZA-T’"
alias unrot21="tr 'a-zA-Z’ 'v-za-uV-ZA-U’"
alias unrot22="tr 'a-zA-Z’ 'w-za-vW-ZA-V’"
alias unrot23="tr 'a-zA-Z’ 'x-za-wX-ZA-W’"
alias unrot24="tr 'a-zA-Z’ 'y-za-xY-ZA-X’"
alias unrot25="tr 'a-zA-Z’ 'z-za-yZ-ZA-Y’"
