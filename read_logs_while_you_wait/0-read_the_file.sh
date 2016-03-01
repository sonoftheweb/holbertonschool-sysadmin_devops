#!/bin/bash
filepath=$1

while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "$line"
done < "$filepath"