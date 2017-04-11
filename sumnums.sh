#!/bin/bash

while read myLine
do
sum=0
count=0
average=0

	row=$( echo $myLine | tr " " "\n" | sort -g )

	rowArray=($row)
	rowSum=$(echo $row | sed 's/ / + /g')
	rowLength=${#rowArray[@]}
	centerIndex=$(expr $rowLength / 2)

	numerator_correction=$(expr \( $rowLength \) / 2 )
	median=${rowArray[centerIndex]}

	echo $median
done < $1
