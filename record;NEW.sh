#!/bin/bash

echo Army
echo Navy
echo Airforce
read -p 'Enter required group from list: ' GROUP
read -p 'Enter record to search: ' RECNO

day=$(date +"%A")


if [ $day = monday ]
then
     d=$(date +"%y-%m-%d")
else
     d=$(date -d last-monday +"%y-%m-%d")
fi


case $RECNO in
     record1)
          d=$(date --date "$d -7 days" +"%y-%m-%d")
          ;;
     record2)
          d=$(date --date "$d -6 days" +"%y-%m-%d")
          ;;
     record3)
          d=$(date --date "$d -5 days" +"%y-%m-%d")
          ;;
     record4)
          d=$(date --date "$d -4 days" +"%y-%m-%d")
          ;;

     record5)
          d=$(date --date "$d -3 days" +"%y-%m-%d")
          ;;
     record6)
          d=$(date --date "$d -2 days" +"%y-%m-%d")
          ;;
     record7)
          d=$(date --date "$d -1 days" +"%y-%m-%d")
          ;;
esac


case $GROUP in
     Army) 
          cat /home/ArmyGeneral/ATTENDANCE_$d
          ;;
     Navy)
          cat /home/NavyMarshal/ATTENDANCE_$d
          ;;
     AirForce)
          cat /home/AirForceChief/ATTENDANCE_$d
          ;;
esac

   

