#!/bin/bash -x
echo "Welcome to EmpWage program"
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
empCheck=$((RANDOM%2));
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
salary=$(($empHrs+$empRatePerHr));



