#!/bin/bash
#Autor: Thiago Leal
#Data: 13-04-17

clear

for (( x=0; x <= 10; x=x++ )); do

let res=($x * x)

echo "x * x = $res"

done


