#if you want to maintain the logging for script, use "logger" in script, logs location-> /var/logs/messages
logger "hi manish"

# enable the debugging of the script in the begining
# set -x 
# to exit script when a command fail
# set -e

# run script in background use nohup:
nohup ./script_name &