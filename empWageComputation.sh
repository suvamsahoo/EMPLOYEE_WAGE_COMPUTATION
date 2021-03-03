#!/bin/bash -x

echo "------------------------- Welcome To Employee Wage Compution ------------------------"

#VALUE TO ASSING PRESENT
isPresent=1

#GET RANDOM VALUE
randomNumber=$((RANDOM%2))

EMPLOYEE_HOUR_FULLTIME=8
EMPLOYEE_HOUR_PARTTIME=4
CompanyTotalWorkingDays=20; #In a month
CompanyTotalEmployeeHours=100;
WagePerHour=20;
TotalSalary=0;
TotalEmployeeHours=0;
TotalWorkingDays=0;


while [[ $TotalEmployeeHours -le $CompanyTotalEmployeeHours &&
               $TotalWorkingDays -le $CompanyTotalWorkingDays ]]
do
      ((TotalWorkingDays++))
      caseChoce=$((RANDOM%3));

      #case statement-:
      case "$caseChoce" in
	     0)
                employeeHour=$((EMPLOYEE_HOUR_FULLTIME))
		;;
	     1)
                employeeHour=$((EMPLOYEE_HOUR_PARTTIME))
		;;

	     *)
                employeeHour=0
		;;
     esac

     TotalEmployeeHours=$(($TotalEmployeeHours + $employeeHour))
done

#SALARY IN A MONTH
TotalWorkingWage=$(($TotalEmployeeHours * $WagePerHour))
echo "In this month employee's total working hours is $TotalEmployeeHours & total working wage is $TotalWorkingWage"

