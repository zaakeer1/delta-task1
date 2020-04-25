#!/bin/bash


sudo useradd -m -u 1500 ChiefCommander
sudo useradd -m -u 2000 ArmyGeneral
sudo useradd -m -u 3000 NavyMarshal
sudo useradd -m -u 4000 AirForceChief 
c=1
while [ $c -le 50 ]
do


s=$(( $c + 2000 ))  

sudo useradd -m -u $s Army$c


(( c++ ))        

done       

echo All done

c=1
while [ $c -le 50 ]
do
s=$(( $c + 3000 ))
sudo useradd -m -u $s Navy$c
(( c++ ))
done
echo All done

c=1
while [ $c -le 50 ]
do
s=$(( $c + 4000 ))
sudo useradd -m -u $s AirForce$c
(( c++ ))
done
echo All done               
