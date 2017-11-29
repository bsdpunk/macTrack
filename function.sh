#!/bin/bash - 
#===============================================================================
#
#          FILE: function.sh
# 
#         USAGE: source function.sh && snap 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Dusty Carver 
#  ORGANIZATION: Double AI
#       CREATED: 12/16/2016 04:24
#      REVISION:  Like .02
#===============================================================================

set -o nounset                              # Treat unset variables as an error
LOGFILE="$HOME/Documents/snap.log"
function snap () { echo "%CPU %MEM USER PID COMMAND" ; ps aux | awk '{print $3,$4,$1,$2,$11}'| sort -rnk1,1 | grep -v '0.0 0.0' && echo '' && vm_stat && echo '' &&  osascript -e 'path to frontmost application as text' ; }


#echo $(cat ~/Documents/snap.log | grep bk | wc -l) \/ 3 | bc


while true;
do
    TIME="$(perl -e 'print(time());')" 
    echo ${TIME} >> ${LOGFILE} && date >> ${LOGFILE} && echo ${TIME} >> ${LOGFILE} && snap >> ${LOGFILE} && echo $(osascript getItermName.scpt) >> ${LOGFILE}; 
    sleep 360
done



