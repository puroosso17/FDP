#!/bin/bash
clear
USUARIO=vagrant
SENHA=vagrant
echo
echo "Debian GNU/Linux 8 jessie tty6"
echo
echo -n "Jessie login: "
read USER
echo -n "Password: "
read SEN
if [ $USER == $USUARIO ]; then
	if [ $SEN == $SENHA ]; then
	echo "Parabens"
	else
	echo "Login incorrect"
	fi
fi

