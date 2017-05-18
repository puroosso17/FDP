#!/bin/bash
clear
echo "Digite um numero!"
read one
echo "Digite outro numero!"
read two
clear
if (( $one > $two )); then
	echo "$one"
else
	echo "$two"
fi
