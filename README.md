# macTrack
Track your time on mac, bash script

```
while true; do sleep 360 && echo bk >> ~/Documents/snap.log && date >> ~/Documents/snap.log && echo bk >> ~/Documents/snap.log && snap >> ~/Documents/snap.log; done
echo $(cat ~/Documents/snap.log | grep bk | wc -l) \/ 3 | bc

```
