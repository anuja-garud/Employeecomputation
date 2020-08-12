#!/bin/bash -x

isPartTime=1
isFullTime=2
ratePerHour=20
numberOfWorkingDay=20
maxHour=100
#CONSTATNT
IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HOUR_IN_MONTH=100
EMP_RATE_PER_HOUR=20
NUM_WORKING_DAYS=20

totalEmpHour=0
#VARIABLES
totalWorkHours=0
totalWorkingDays=0

while [[ $totalEmpHour -le $maxHour && $totalWorkingDays -le $numberOfWorkingDay ]]
function getWorkingHours() {
        case $1 in
                $IS_PART_TIME)
                        workingHours=4
                        ;;
                $IS_FULL_TIME)
                        workingHours=8
                        ;;
                *)
                        workingHours=0
                        ;;
        esac
        echo $workingHours
}

while [[ $totalWorkHours -lt $MAX_HOUR_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]

do
((totalWorkingDays++))
empCheck=$(( RANDOM%3 ));
case $empCheck in
        $isPartTime)
          echo "Emp part time salary"
          empHour=4
            ;;
        $isFullTime)
            echo "Emp full time salary"
             empHour=8
             ;;
        *)
            echo "Emp is not exist"
           empHour=0
           ;;
esac
totalEmpHour=$(( $totalEmpHour+$empHour ))
totalSalary=$(( $totalEmpHour*$ratePerHour ))
        ((totalWorkingDays++))
        workHours="$( getWorkingHours $(( RANDOM%3 )) )"
        totalWorkHours=$(( $totalWorkHours+$workHours ))

done
totalSalary=$(($totalWorkHours*$EMP_RATE_PER_HOUR));
echo "$totalSalary";
