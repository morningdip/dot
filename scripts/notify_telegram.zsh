#!/bin/zsh

function logger() {
    # Prints specified message into stdout
    # @1st argument is logging level
    # @2nd argument is logging message
    LOG_TIMESTAMP=$(datetime_now)

    CYAN="\033[0;36m"
    RED="\033[0;31m"
    ORANGE="\033[0;33m"
    NOCOLOR="\033[0m"

    if [ "$1" == "WARN" ]; then
        LEVEL=${ORANGE}$1${NOCOLOR}
    elif [ "$1" == "ERROR" ]; then
        LEVEL=${RED}$1${NOCOLOR}
    else
        LEVEL=${CYAN}$1${NOCOLOR}
    fi

    LOG_MESSAGE=$2
    LOG_TEMPLATE="$LOG_TIMESTAMP - [$LEVEL] -"

    printf "$LOG_TEMPLATE $LOG_MESSAGE\n"
}

function notify_telegram() {
    # Send notification using Telegram API
    # @1st argument is Telegram bot token
    # @2nd argument is Telegram chat id
    # @3rd argument is notification message

    status_code=$(
        curl -s -o /dev/null -w "%{http_code}" -X POST -H 'Content-Type: application/json' \
        -d "{\"chat_id\": \"$2\", \"text\": \"$3\", \"disable_notification\": true}" \
        https://api.telegram.org/bot$1/sendMessage
    )

    if [ "$status_code" != 200 ] ; then
        logger "ERROR" "Telegram response statis code: $status_code"
        return 1
    fi
    return 0
}
