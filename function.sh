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
function snap () { ps aux | awk '{print $3,$4,$1,$2,$11}'| sort -rnk1,1 | grep -v '0.0 0.0' && echo bk && vm_stat && echo bk &&  osascript -e 'path to frontmost application as text' ; }


#echo $(cat ~/Documents/snap.log | grep bk | wc -l) \/ 3 | bc
while true; do echo bk >> ~/Documents/snap.log && date >> ~/Documents/snap.log && echo bk >> ~/Documents/snap.log && snap >> ~/Documents/snap.log && echo $(osascript getItermName.scpt) >> ~/Documents/snap.log; sleep 360 && echo not ; done



