#!/bin/bash

maxi=0
mini=100
for file in $(ls "$1")
do
	for info in $(cat "$1/$file")
	do
		age=$(echo $info | cut -d ":" -f2)
		
		if [[ $age -gt $maxi ]]
		then
			maxi=$age
		fi
		
		if [[ $age -lt $mini ]]
		then
			mini=$age
		fi
	done
done
echo "Максимальный возраст - $maxi"
echo "Минимальный возраст - $mini"
