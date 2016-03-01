#!/bin/bash
filepath=$1

while IFS='' read -r line || [[ -n "$line" ]]; do
	if [[ $line =~ "HEAD" ]]
		then
    		headreq++
	fi

done < "$filepath"