#!/bin/bash -x

isPresent=1;
randomCheck=$((RANDOM%3));

if [ $isPresent -eq $randomCheck ];
then
	empRatePerHr=20;
	empHrs=8;
salary=$(($empHrs*$empRatePerHr));
else
	salary=0;
fi
