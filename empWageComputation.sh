#!/bin/bash -x

echo "------------------------- Welcome To Employee Wage Compution ------------------------"

#VALUE TO ASSING PRESENT
isPresent=1

#GET RANDOM VALUE
randomNumber=$((RANDOM%2))

WagePerHour=20;
FullDayHour=8;
PartTimeHour=4;

#FUNCTION TO CALCULATE EMPLOYEE WAGE-:
function calculateDailyEmployeeWae(){
      calculateEmployeeWage=$(( $WagePerHour * $FullDayHour ))
      echo $calculateEmployeeWage #return
}

#FUNCTION TO CALCULATE PART TIME EMPLOYEE WAGE-:
function partTimeEmployeeAndWage(){
      calculatePartTimeEmployeeWage=$(( $WagePerHour * $PartTimeHour ))
      echo $calculatePartTimeEmployeeWage #return
}

#CHECK THE EMPLOYEE IS PRESENT AND ABSENT-:
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"
        caseChoce=$((RANDOM%2));

  #case statement-:
  case "$caseChoce" in
	0)
		DailyWage="$( calculateDailyEmployeeWae )"
                echo "Employee daily wage :" $DailyWage "rupees"
		;;
	1)
                PartTimeWage="$( partTimeEmployeeAndWage )"
                echo "Calculate part time employee and wage :" $PartTimeWage "rupees"
		;;

	*)      echo "No choice"
		;;
   esac

else
   echo "Employee Absent"
fi
