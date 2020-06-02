#!/bin/bash -x
echo "Welcome to EmpWage program"
isPresent=1;
randomCheck=$(( $RANDOM %2 ))
Salary=0;
if [ $isPresent -eq $randomCheck ];
        then
		echo "Employee is Present"
else 
	echo "Employee is absent"
fi

