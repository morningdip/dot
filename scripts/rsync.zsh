#!/bin/zsh

# Telegram bot API token
BOT_TOKEN="XXXXXXXXXX:XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

# Telegram group chat ID
CHAT_ID="-XXXXXXXXXXXXXXXXXXXX"

# Set the folder to sync from
SYNC_SRC="/home/user/src"

# Set the folder to sync to
SYNC_DST="/home/user/dst"

# Log file
LOG_FILE="/var/log/rsync.log"

# Check that the log file exists
if [ ! -e "$LOG_FILE" ]; then
    touch "$LOG_FILE"
    echo "$(date "+%Y-%m-%d %k:%M:%S") [INFO] Create log file successfully."
fi

# Check that source dir exists and is readable
if [ ! -r  "$SYNC_SRC" ]; then
    echo "$(date "+%Y-%m-%d %k:%M:%S") [ERROR] Unable to read source folder" | tee "$LOG_FILE"
    echo "$(date "+%Y-%m-%d %k:%M:%S") [ERROR] Unable to sync." | tee "$LOG_FILE"
    exit 1
else
    echo "$(date "+%Y-%m-%d %k:%M:%S") [INFO] The source folder was successfully verified."		
fi

# Start sync
echo "$(date "+%Y-%m-%d %k:%M:%S") [INFO] Sync started." | tee "$LOG_FILE"
rsync -avz --progress --partial --append "$SYNC_SRC" user@remote:"$SYNC_DST" &&

# End entry in the log
echo "" >> "$LOG_FILE" &&

if [ "$?" -eq "0" ]; then
    EXIT_MSG="The rsync command completed successfully"
elif [ "$?" -eq "20" ]; then
    EXIT_MSG="The rsync process was interrupted by user"
else
    EXIT_MSG="The rsync command failed with an error code $?"
fi

curl "https://api.telegram.org/bot$BOT_TOKEN/sendMessage?chat_id=$CHAT_ID&text=$EXIT_MSG"

exit 0
