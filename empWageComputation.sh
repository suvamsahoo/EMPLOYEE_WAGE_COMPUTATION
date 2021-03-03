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

#CALCULATE THE EMPLOYEE WAGE-:
function calculateDailyEmployeeWage(){
	read -p "Wage per hour is :" isWagePerHour "rupees"
	read -p "Full day hours is :" isFullDayHour
	calculateEmployeeWage=$(( $isWagePerHour * $isFullDayHour ))
        echo $calculateEmployeeWage #return
}
wage="$( calculateDailyEmployeeWage )"

echo "Calculate daily employee wage :" $wage "rupees"
