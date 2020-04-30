#!/bin/bash

sudo wget -nc -P ~/Downloads https://inductions.delta.nitt.edu/sysad-task1-position.log
d=$(date +"%y-%m-%d")
egrep "$d" ~/Downloads/sysad-task1-position.log > ~/Documents/POSITION_TD.txt


egrep 'Army' ~/Documents/POSITION_TD.txt > ~/Documents/GROUP_POSITION.txt
c=1
while [ $c -le 50 ]
do
     egrep "Army$c " ~/Documents/GROUP_POSITION.txt | sed 's/-/ /3' | cut -d " " -f 1,5,6 > /home/Army$c/LOCATION.txt
     (( c++ ))
done 

     
egrep 'Navy' ~/Documents/POSITION_TD.txt > ~/Documents/GROUP_POSITION.txt
c=1
while [ $c -le 50 ]
do
     egrep "Navy$c " ~/Documents/GROUP_POSITION.txt | sed 's/-/ /3' | cut -d " " -f 1,5,6 > /home/Navy$c/LOCATION.txt
     (( c++ ))
done 

     
egrep 'AirForce' ~/Documents/POSITION_TD.txt > ~/Documents/GROUP_POSITION.txt
c=1
while [ $c -le 50 ]
do
     egrep "AirForce$c " ~/Documents/GROUP_POSITION.txt | sed 's/-/ /3' | cut -d " " -f 1,5,6 > /home/AirForce$c/LOCATION.txt
     (( c++ ))
done

 








    
