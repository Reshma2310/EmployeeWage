#!/bin/bash -x

isFullTime=1;
isPartTime=2;
perHourSalary=20;
maxWorkingHours=100;
numWorkingDays=20;

totalEmpHrs=0;
totalWorkingDays=0;

function getWorkingHours() {
	case $1 in
		0)
			workingHours=0;
			;;
		1)
			workingHours=8;
			;;
		2)
			workingHours=4;
			;;
	esac;
	echo $workingHours;
}

while [[ $totalWorkingDays -lt $numWorkingDays && $totalEmpHrs -lt $maxWorkingHours ]]
do
	((totalWorkingDays++))
	workingHours=$( getWorkingHours $((RANDOM%3)) );
	totalEmpHrs=$(($totalEmpHrs + $workingHours));
	dailyWage[$totalWorkingDays]="$((workingHours*$perHourSalary))";
done
totalSalary=$(($totalEmpHrs*$perHourSalary));
 
echo $totalSalary
echo ${dailyWage[@]}
