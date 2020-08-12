#!/bin/bash -x


#Constatnt
IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HOUR_IN_MONTH=100
EMP_RATE_PER_HOUR=20
NUM_WORKING_DAYS=20

#VARIABLES
totalWorkHours=0
RATE_PER_HOUR=125
NUMBER_OF_WORKING_DAY=2
MAX_HOURS=10

#Variable
totalEmpHour=0
totalWorkingDays=0

function getWorkingHours() {
        case $1 in

function getDailyWages(){
        local empHrs=$1
        empSalary=$(( $empHrs*$RATE_PER_HOUR ))
        echo $empSalary
}
function getEmpHours(){
        case $empCheck in
                $IS_PART_TIME)
                        workingHours=4
                        ;;
                empHour=4
                ;;
                $IS_FULL_TIME)
                        workingHours=8
                        ;;
                empHour=8
                ;;
                *)
                        workingHours=0
                        ;;
        esac
        echo $workingHours
                empHour=0
                ;;
                esac
                echo $empHour
}

while [[ $totalWorkHours -lt $MAX_HOUR_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]

while [[ $totalEmpHour -le $MAX_HOURS && $totalWorkingDays -le $NUMBER_OF_WORKING_DAY ]]
do
        ((totalWorkingDays++))
        workHours="$( getWorkingHours $(( RANDOM%3 )) )"
        totalWorkHours=$(( $totalWorkHours+$workHours ))
        ((totalWorkingDays++))
        empCheck=$(( RANDOM%3 ));

        empHour="$( getEmpHours $empCheck)"
        totalEmpHour=$(( $totalEmpHour + $empHour ))
        dailyWages[totalWorkingDays]="$( getDailyWages $empHour )"
        totalSalary="$( getDailyWages $totalEmpHour)"
done
totalSalary=$(($totalWorkHours*$EMP_RATE_PER_HOUR))
echo ${dailyWages[@]}
