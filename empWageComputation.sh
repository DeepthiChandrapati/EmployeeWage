#!/bin/bash -x
echo "Welcome to EmpWage program"

# CONSTANTS FOR THE PROGRAM
isPartTime=1;
isFullTime=2;
maxHrsInAMonth=10
empRatePerHr=20;
numWorkingDays=20;

# VARIABLES
totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $maxHrsInAMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$(( RANDOM % 3 ));
case $empCheck in
	$isFullTime)
		empHrs=8
		;;
	$isPartTime)
		empHrs=8
		;;
	*)
		empHrs=0
		;;
esac
totalEmpHrs=$(( $totalEmpHrs+$empHrs ))
done
totalSalary=$(( $totalEmpHrs+$empRatePerHr ));




