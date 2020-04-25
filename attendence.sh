#!/bin/bash



d=$(date +%y-%m-%d)
egrep "$d" /home/zak/Downloads/attendence.txt > /home/zak/Documents/todayAtt.txt
egrep "Army" /home/zak/Documents/todayAtt.txt > /home/zak/Documents/todayAttArmy.txt
egrep "YES" /home/zak/Documents/todayAttArmy.txt | sed 's/-/ /3' | cut -d " " -f 3,4 > /home/ArmyGeneral/att$d.txt

egrep "AirForce" /home/zak/Documents/todayAtt.txt > /home/zak/Documents/todayAttAirForce.txt
egrep "YES" /home/zak/Documents/todayAttNavy.txt | sed 's/-/ /3' | cut -d " " -f 3,4 > /home/NavyMarshal/att$d.txt

egrep "AirForce" /home/zak/Documents/todayAtt.txt > /home/zak/Documents/todayAttAirForce.txt
egrep "YES" /home/zak/Documents/todayAttAirForce.txt | sed 's/-/ /3' | cut -d " " -f 3,4 > /home/AirForceChief/att$d.txt


