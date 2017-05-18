#!/bin/bash

#Autor: Thiago Leal
#Data: 13/04/17
#Curso: Redes MT1

clear

echo -n "Login: "
read login
echo -n "Senha: "
read -s senha
if [ $senha == Senai@132 ]; then
echo
echo "Olá!"
else
echo
echo "Login incorrect"
	while [ $senha != Senai@132 ]; do
	echo -n "Login: "
	read login
	echo -n "Senha: "
	read -s senha
	done
fi

