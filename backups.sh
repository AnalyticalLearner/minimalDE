#!/bin/bash

#Script to backup essential files from desktop to external USB drive.

# Variables
USER_NAME=

# Specific backups
rsync -rtvzP ~/lynx_bookmarks.html /media/$USER_NAME/backups/ ;
rsync -rtvzP ~/.bashrc /media/$USER_NAME/backups/dotfiles/;
rsync -rtvzP ~/.bash_aliases /media/$USER_NAME/backups/dotfiles/;
rsync -rtvzP ~/Desktop /media/$USER_NAME/backups/
#rsync -rtvzP ~/.bash_aliases ~/Webserver/homeweb/configs/bash_aliases;
rsync -rtvzP ~/.muttrc /media/$USER_NAME/backups/;
rsync -rtvzP ~/.ssh /media/$USER_NAME/backups/;
rsync -rtvzP ~/.thunderbird /media/$USER_NAME/backups/ ;
rsync -rtvzP ~/.config/newsboat/url /media/$USER_NAME/backups/ ;
rsync -rtvzP ~/.newsboat/newsboat_config /media/$USER_NAME/backups/ ;
rsync -rtvzP ~/app.images/* /media/$USER_NAME/backups/appimages/;
rsync -rtvzP ~/.sword /media/$USER_NAME/backups/ ;
#rsync -rtvzP ~/bin/tmuxsesh /media/$USER_NAME/backups/ ;
rsync -rtvzP ~/bin /media/$USER_NAME/backups/;
rsync -rtvzP ~/Zotero /media/$USER_NAME/backups/;
rsync -rtvzP /etc/hosts /media/$USER_NAME/backups/etc/;
rsync -rtvzP /etc/fstab /media/$USER_NAME/backups/etc/;

#Export of cron jobs
crontab -l > /media/$USER_NAME/backups/crontab/contab.txt

#Export of installed applications
dpkg --get-selections > /media/$USER_NAME/backups/apps.installed.txt;


#NOTES
