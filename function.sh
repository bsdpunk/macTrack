#!/bin/bash - 
#===============================================================================
#
#          FILE: function.sh
# 
#         USAGE: ./function.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 12/16/2016 04:24
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
function snap () { ps aux | awk '{print $3,$4,$1,$2,$11}'| sort -rnk1,1 | grep -v '0.0 0.0' && echo bk && vm_stat && echo bk &&  osascript -e 'path to frontmost application as text' ; }

#while true; do sleep 360 && echo bk >> ~/Documents/snap.log && date >> ~/Documents/snap.log && echo bk >> ~/Documents/snap.log && snap >> ~/Documents/snap.log; done
