#!/bin/bash -x
echo "Welcome to EmployeeWage program"

# CONSTANTS FOR THE PROGRAM
isPartTime=1;
isFullTime=2;
maxHrsInAMonth=10
empRatePerHr=20;
numWorkingDays=20;

# VARIABLES
totalEmpHrs=0;
totalWorkingDays=0;

function getWorkingHours(){
    case $1 in
	$isFullTime)
		workingHrs=8
		;;
	$isPartTime)
		workingHrs=8
		;;
	*)
		workingHrs=0
		;;
esac
echo $workingHrs
}

while [[ $totalWorkingHrs -lt $maxHrsInAMonth && $totalWorkingDays -lt $numWorkingHrs ]]
do
((totalWorkingDays++))
workHrs="$( getWorkingHrs $((RANDOM%3)) )"
totalWorkingHrs=$(( $totalWorkingHrs+$workHrs ))
done
totalSalary=$(( $totalWorkingHrs+$empRatePerHr ));




