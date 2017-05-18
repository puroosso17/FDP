#!/bin/bash
clear
INT=1

read -p "Digite um número" NUMERO
TESTE=$NUMERO

while [ $TESTE != "0" ]; do

read -p "Digite um número" NUMERO[$INT]
TESTE=${NUMERO[$INT]}
let INT=$INT+1

done

for x in ${NUMERO[*]}; do
	if [ $TESTE == "0" ]; then
		echo $x

	fi
	let INT=$INT+1
done
