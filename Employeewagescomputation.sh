#!/bin/bash -x
ispresent=1;
randomcheck=$(( RANDOM%2 ));
if [ $ispresent -eq $randomcheck ];
then
isparttime=1;
isfulltime=2;
emprateperhr=20;
emphrs=8;
salary=$(( $emphrs*$emprateperhr));
else
salary=0;
fi
randomcheck=$(( RANDOM%3 ));
	if [ $isparttime -eq $randomcheck ];
		then
			emphr=4
		elif [ $isfulltime -eq $randomcheck ];
		then
			emphr=8
		else
			emphr=0
	fi
salary=$(($emphr*$emprateperhr))
