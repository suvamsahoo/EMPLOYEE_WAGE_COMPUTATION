#!/bin/bash -x

echo "------------------------- Welcome To Employee Wage Compution ------------------------"

#VALUE TO ASSING PRESENT
isPresent=1

#TO GET RANDOM VALUE
randomNumber=$((RANDOM%2))

#FUNCTION TO CALCULATE PART TIME EMPLOYEE AND  WAGE-:
        function partTimeEmployeeAndWage(){
        read -p "Assume Wage per hour is :" isWagePerHour "rupees"
        read -p "To part time hour is :" isPartTimeHour
        calculatePartTimeEmployeeWage=$(( $isWagePerHour * $isPartTimeHour ))
        echo $calculatePartTimeEmployeeWage #return
}

#CHECK THE EMPLOYEE PRESENT AND ABSENT-:
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"
        wage="$( partTimeEmployeeAndWage )"
        echo "Calculate part time employee and wage :" $wage "rupees"
else
   echo "Employee Absent"
fi
