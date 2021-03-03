#!/bin/bash -x

echo "------------------------- Welcome To Employee Wage Compution ------------------------"

#VALUE TO ASSING PRESENT
isPresent=1

#GET RANDOM VALUE
randomNumber=$((RANDOM%2))

TotalWorkingDays=20; #In a month
WagePerHour=20;

#FUNCTION TO CALCULATE EMPLOYEE WAGE-:
function calculateWage(){
      calculateEmployeeWage=$(( $WagePerHour * $1 ))
      echo $calculateEmployeeWage #return
}

#CALCULATE EMPLOYEE MONTHLY WAGE-:
function calculateMonthlyWage(){
      calculateEmployeeWageForMonth=$(( $1 * $TotalWorkingDays ))
      echo $calculateEmployeeWageForMonth;
}


#CHECK THE EMPLOYEE IS PRESENT AND ABSENT-:
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"
        caseChoce=$((RANDOM%2));

  #case statement-:
  case "$caseChoce" in
	0)
                FullDayHour=8;
                #ONE DAY, EMPLOYEE WORKING WAGE-:
                DailyWage="$(calculateWage $FullDayHour)"
                echo "Full day employee daily wage :" $DailyWage "rupees"

                #MONTHLY, EMPLOYEE WORKING WAGE-:
                EmployeeWageForMonth="$(calculateMonthlyWage $DailyWage)"
		echo "To calculate full day employee wages for a Month :" $EmployeeWageForMonth "rupees" 
		;;
	1)
                PartTimeHour=4;
                #ONE DAY, EMPLOYEE WORKING WAGE-:
                DailyWage="$(calculateWage $PartTimeHour)"
                echo "Part time employee daily wage :" $DailyWage "rupees"

                #MONTHLY, EMPLOYEE WORKING WAGE-:
                EmployeeWageForMonth="$(calculateMonthlyWage $DailyWage)"
		echo "To calculate part time employee wages for a Month :" $EmployeeWageForMonth "rupees"
		;;

	*)      echo "No choice"
		;;
   esac

else
   echo "Employee Absent"
fi
