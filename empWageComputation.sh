#!/bin/bash -x

echo "------------------------- Welcome To Employee Wage Compution ------------------------"

EMPLOYEE_HOUR_FULLTIME=8
EMPLOYEE_HOUR_PARTTIME=4
CompanyTotalWorkingDays=20; #In a month
CompanyTotalEmployeeHours=100;
WagePerHour=20;
TotalWage=0;
TotalEmployeeHours=0;
TotalWorkingDays=0;

#FUNCTION TO GET WORK HOURS
function getWorkHours()
{
  caseChoce=$((RANDOM%3))
  case $caseChoce in
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
   echo $employeeHour #return
}

#FUNCTION TO CALCULATE WAGE
function calculateWage()
{
  employeeHR=$1
  wage=$(($employeeHR * $WagePerHour))
  echo $wage #return
}

while [[ $TotalEmployeeHours -le $CompanyTotalEmployeeHours &&
               $TotalWorkingDays -le $CompanyTotalWorkingDays ]]
do
      ((TotalWorkingDays++))

      dailyHR="$(getWorkHours)"
      dailyWage="$(calculateWage $dailyHR)"
      dailyWageArray[TotalWorkingDays]=$dailyWage
      TotalWage=$(($TotalWage + $dailyWage))
      TotalEmployeeHours=$(($TotalEmployeeHours + $dailyHR))
done

#PRINT WAGES FOR A MONTH-:
totalEmployeeWageOfMonth=$(($(calculateWage $TotalEmployeeHours)))
echo "Daily wages: ${dailyWageArray[@]}"
echo "In this month employee total working hours is $TotalEmployeeHours & total wage is $totalEmployeeWageOfMonth" #$TotalWage
