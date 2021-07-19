#!/bin/bash

d=$(date +"%y-%m-%d")
sudo wget -nc -P ~/Downloads https://inductions.delta.nitt.edu/sysad-task1-attendance.log
egrep "$d" ~/Downloads/sysad-task1-attendence.log > ~/Documents/ATTENDANCE_TD.txt

egrep "Army" ~/Documents/ATTENDANCE_TD.txt > ~/Documents/ATTENDANCE_ARMY.txt
egrep "YES" ~/Documents/ATTENDANCE_ARMY.txt | sed 's/-/ /3' | cut -d " " -f 3,4 > /home/ArmyGeneral/ATTENDANCE_$d.txt

egrep "AirForce" ~/Documents/ATTENDANCE_TD.txt > ~/Documents/ATTENDANCE_NAVY.txt
egrep "YES" ~/Documents/ATTENDANCE_NAVY.txt | sed 's/-/ /3' | cut -d " " -f 3,4 > /home/NavyMarshal/ATTENDANCE_$d.txt

egrep "AirForce" ~/Documents/ATTENDANCE_TD.txt > ~/Documents/ATTENDANCE_AIRFORCE.txt
egrep "YES" ~/Documents/ATTENDANCE_AIRFORCE.txt | sed 's/-/ /3' | cut -d " " -f 3,4 > /home/AirForceChief/ATTENDANCE_$d.txt


