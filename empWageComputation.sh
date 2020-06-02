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
<<<<<<< HEAD
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
=======
		workHours=8
		;;
	$isPartTime)
		workHours=8
		;;
	*)
		workHours=0
		;;
esac
echo $workHours
}

while [[ $totalWorkHours -lt $max_HrsInAMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
((totalWorkingDays++))
workHours="$( getWorkingHours $(( RANDOM % 3 )) )"
totalworkHours=$(( $totalWorkHours+$workHours ))

done
totalSalary=$(( $totalWorkHours+$empRatePerHr ));
>>>>>>> UC7_RefactorUsingFunc




