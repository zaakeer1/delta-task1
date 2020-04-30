#!/bin/bash

sudo useradd -m ChiefCommander
sudo useradd -m ArmyGeneral
sudo useradd -m NavyMarshal
sudo useradd -m AirForceChief 

c=1
while [ $c -le 50 ]
do
     sudo useradd -m Army$c
     sudo useradd -m Navy$c
     sudo useradd -m AirForce$c
     (( c++ ))        
done       
     echo All done

      
