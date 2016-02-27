#!/bin/bash
message=$1
sex=$2
server=$3

file=$(echo $message | awk '{print $1}')

case $sex in
	f)
		espeak -ven+f4 "$1" --stdout > $file.wav
		scp $file.wav admin@$server:/var/www/html 
		echo "Listen to the message on $server/$file.wav"
		;;
	m)
		espeak -s 10 -ven+m4 "$1" --stdout > $file.wav
		scp $file.wav admin@$server:/var/www/html
		echo "Listen to the message on $server/$file.wav"
		;;
	x)
		espeak -w $file.wav $1
		espeak -p 25 "$1" --stdout > $file.wav
		scp $file.wav admin@$server:/var/www/html
		echo "Listen to the message on $server/$file.wav"
		;;	
	*)
		echo "Unknown voice type"
esac