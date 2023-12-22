#!/bin/zsh

function datetime_now () {
    local RES=$(date -u +'%Y-%m-%d %H:%M:%S.%3N %Z')
    echo $RES
}

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

logger "ERROR" "Test response statis code: 404"
