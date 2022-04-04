#!/bin/bash -x

isPartTime=2;
isFullTime=1;
perHourSalary=20;
maxWorkingHours=100;
numWorkingDays=20;

totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalWorkingDays -lt $numWorkingDays && $totalEmpHrs -lt $maxWorkingHours ]]
do
	((totalWorkingDays++))
	isPresent=$((RANDOM%3));
	case $isPresent in
		0)
		#echo "Employee is absent";
		workingHour=0;
		;;

		1)
		#echo "Employee is present";
		workingHour=8;
		;;

		2)
		#echo "Employee is working as part time";
		workingHour=4;
		;;
	esac
	totalEmpHrs=$(($totalEmpHrs + $workingHour));
done
echo totalSalary=$(($totalEmpHrs*$perHourSalary))

