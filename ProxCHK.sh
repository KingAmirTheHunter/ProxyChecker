#!/bin/bash
echo "Enter Path to portscan resualt: "
read POSCPath
POSCPath = cat POSCPath
for n in $POSCPath
do
    echo "Working on $n file name now"
    OUTPUT="$(curl -Is --proxy 104.144.218.121:3128 http://askubuntu.com | head -1)"
    #echo "${OUTPUT}"
    if [[ "${OUTPUT}" = *"HTTP/1.1 403 Forbidden"* ]]
    then
        echo "Olala"
    fi
done
