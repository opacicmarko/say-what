#!/bin/bash

# Check if we're already running under nohup (detect parent process or use a flag)
if [ -z "$ALREADY_NOHUP" ]; then
  export ALREADY_NOHUP=1
  nohup "$0" "$@" > /dev/null 2>&1 &
  exit
fi

# Defaults
INITIAL_TIMEOUT=60
MESSAGE="ha ha ha, your computer has been compromised"

# Overwrite defaults if arguments are provided
if [ "$#" -eq 1 ]; then
	MESSAGE=$1
	echo $1
elif [ "$#" -eq 2 ]; then
	MESSAGE=$1
	INITIAL_TIMEOUT=$2
fi

sleep $INITIAL_TIMEOUT

while true; do
	osascript -e "set volume output volume 100"
	say $MESSAGE
	sleep 1
done
