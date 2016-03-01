#!/bin/bash
filepath=$1
headreq=0
getreq=0

while IFS='' read -r line || [[ -n "$line" ]]; do
	if [[ $line =~ "HEAD" ]]; then
    	((headreq++))
	elif [[ $line =~ "GET" ]]; then
		((getreq++))
	fi

done < "$filepath"

echo "$headreq"
echo "$getreq"