#!/bin/bash

d=$(date +"%y-%m-%d")
egrep "$d" /home/zak/Downloads/position.txt > /home/zak/Documents/tdspos.txt
egrep 'Army' /home/zak/Documents/tdspos.txt > /home/zak/Documents/temp.txt

c=1
while [ $c -le 5 ]
do

egrep "Army$c " /home/zak/Documents/temp.txt | sed 's/-/ /3' | cut -d " " -f 1,5,6 > /home/Army$c/tpos.txt
(( c++ ))

done 

egrep 'Navy' /home/zak/Documents/tdspos.txt > /home/zak/Documents/temp.txt

c=1
while [ $c -le 5 ]
do

egrep "Navy$c " /home/zak/Documents/temp.txt | sed 's/-/ /3' | cut -d " " -f 1,5,6 > /home/Navy$c/tpos.txt
(( c++ ))
done 

egrep 'AirForce' /home/zak/Documents/tdspos.txt > /home/zak/Documents/temp.txt

c=1
while [ $c -le 5 ]
do

egrep "AirForce$c " /home/zak/Documents/temp.txt | sed 's/-/ /3' | cut -d " " -f 1,5,6 > /home/AirForce$c/tpos.txt
(( c++ ))

done

 








    
