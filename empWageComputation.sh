#!/bin/bash -x
echo "Welcome to EmployeeWage program"

# CONSTANTS FOR THE PROGRAM
isPartTime=1;
isFullTime=2;
maxHrsInAMonth=20
empRatePerHr=20;
numWorkingDays=20;

# VARIABLES
totalWorkHours=0;
totalWorkingDays=0;

function getWorkingHours(){
    case $1 in
	$isFullTime)
		workHours=8
		;;
	$isPartTime)
		workHours=4
		;;
	*)
		workHours=0
		;;
esac
echo $workHours
}
 function calcDailyWage(){
local workHours=$1
wage=$(( $workHours+$empRatePerHr ))
echo $wage
}
while [[ $totalWorkHours -lt $maxHrsInAMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
((totalWorkingDays++))
workHours="$( getWorkingHours $(( $RANDOM % 3 )) )"
totalWorkHours=$(( $totalWorkHrs+$workHours ))
empDailyWage[$totalWorkingDays]="$( calcDailyWage $workHours )"
done

totalSalary="$( calcDailyWage $totalWorkHours )"
echo "Daily wage " ${empDailyWage[@]}




