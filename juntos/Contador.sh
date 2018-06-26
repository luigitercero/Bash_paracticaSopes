# !/bin/bash

let inicial=$1
let pasos=$2

for ((i=$inicial;i>0;i=$i-$pasos)); do
let n=$i-$pasos
echo -n $i" "
if [[ $n -lt 0 ]];
then
	sleep 1
    i=$inicial
    echo -n $i" "
    
    
fi
    sleep 1
done

