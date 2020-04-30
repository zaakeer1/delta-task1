#!/bin/bash

sudo setfacl -m u:ChiefCommander:rwx -R /home/ArmyGeneral
sudo setfacl -m u:ChiefCommander:rwx -R /home/NavyMarshal 
sudo setfacl -m u:ChiefCommander:rwx -R /home/AirForceChief

c=1
while [ $c -le 50 ]
do
     sudo setfacl -m u:ChiefCommander:rwx,u:ArmyGeneral:rwx -R /home/Army$c
     (( c++ ))
done
     echo Army done


c=1
while [ $c -le 50 ]
do
     sudo setfacl -m u:ChiefCommander:rwx,u:NavyMarshal:rwx -R /home/Navy$c
     (( c++ ))
done
     echo Navy done 


c=1
while [ $c -le 50 ]
do
     sudo setfacl -m u:ChiefCommander:rwx,u:AirForceChief:rwx -R /home/AirForce$c
     (( c++ ))
done
     echo AirForce done




