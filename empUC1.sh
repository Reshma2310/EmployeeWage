#!/bin/bash -x

check=$(( RANDOM%2 ))

if [[ $check -eq 1 ]]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
