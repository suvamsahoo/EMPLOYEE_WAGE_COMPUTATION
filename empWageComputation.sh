#!/bin/bash -x

echo "-------------------------------------------- Welcome To Employee Wage Computation -------------------------------------------------------"

#VALUE TO ASSING PRESENT
isPresent=1
#Get random VARIABLE
randomNumber=$((RANDOM%2))

#CHECK THE EMPLOYEE IS PRESENT OR ABSENT-:
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi
