# cat uperf.sh 
#!/usr/bin/env bash

set -e

LIST_OF_TEST=("stream" "rr")
LIST_OF_PSIZE=(64 1024 16384)
LIST_OF_THREADS=(1)
h="10.10.10.10"

for ttype in ${LIST_OF_TEST[@]}
do
for packet in ${LIST_OF_PSIZE[@]}
do
for thr in ${LIST_OF_THREADS[@]}
do
export PACKET=$packet
export THREAD=$thr
export SERVER=$h

envsubst < uperf-$ttype.xml | cat - > uperf.xml
echo "$ttype result of $packet packets on $thr thread"
for i in $(seq 1 3)
do
python3 uperf.py
echo "----------------------------------------"
done
done
done
done
