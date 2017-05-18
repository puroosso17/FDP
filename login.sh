#!/bin/bash
clear
USUARIO=vagrant
SENHA=vagrant
echo
echo 'Debian GNU/Linux 8 Jessie tty1'
echo
while (( $SAI != 0 )); do
  echo -n "Jessie Login: "
  read USER
  echo -n "Password: "
  read -s PASS
  echo
  if [ $USER == $USUARIO ]; then
	if [ $PASS == $SENHA ]; then
		SAI=0
	else
		echo "Digitou a senha errada"
	fi
else
	echo "Digitou o usuario errado"
fi
done
