#!/bin/bash
echo START

sudo setfacl -m u:ChiefCommander:rwx /home/ArmyGeneral
sudo setfacl -m u:ChiefCommander:rwx /home/NavyMarshal 
sudo setfacl -m u:ChiefCommander:rwx /home/AirForceChief

c=1
while [ $c -le 5 ]
do

sudo setfacl -m u:ChiefCommander:rwx /home/Army$c
(( c++ ))

done
echo Army done

c=1
while [ $c -le 5 ]
do

sudo setfacl -m u:ChiefCommander:rwx /home/Navy$c
(( c++ ))

done
echo Navy done 

c=1
while [ $c -le 5 ]
do

sudo setfacl -m u:ChiefCommander:rwx /home/AirForce$c
(( c++ ))

done
echo AirForce done

c=1
while [ $c -le 5 ]
do

sudo setfacl -m u:ArmyGeneral:rwx /home/Army$c
(( c++ ))

done
echo ArmyG done

c=1
while [ $c -le 5 ]
do

sudo setfacl -m u:NavyMarshal:rwx /home/Navy$c
(( c++ ))

done
echo NavyM done

c=1
while [ $c -le 5 ]
do

sudo setfacl -m u:AirForceChief:rwx /home/AirForce$c
(( c++ ))

done
echo AirForceC done



