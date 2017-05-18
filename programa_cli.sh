#!/bin/bash
#################### Comentários ###########################
# Data							   #
# Autor							   #
# Contato						   #
# Esse programa foi criado para retomar as aulas anteriores#
############################################################

#################### Variáveis ####################
USER="USUARIO"
PASS="123"
#################### Funções ####################

function GARQ(){
clear
echo "Função GARQ"
read -p 'Precione [enter] para finalizar' PPP
MENU
}
function GUSR(){
clear
echo "Função GUSR"
read -p 'Precione [enter] para finalizar' PPP
MENU
}
function GRED(){
clear
echo "Função GRED"
read -p 'Precione [enter] para finalizar' PPP
MENU
}
function GDIS(){
clear
echo "Função GDIS"
read -p 'Precione [enter] para finalizar' PPP
MENU
}
function GREP(){
clear
echo "Função GREP"
read -p 'Precione [enter] para finalizar' PPP
MENU
}
function MENU(){
clear
echo "	1) Gerenciar Arquivos"
echo "	2) Gerenciar Usuario"
echo "	3) Gerenciar Rede"
echo "	4) Gerenciar Dispositivos"
echo "	5) Gerenciar Repositório"
echo "	6) Sair"

read -n 1 -p "Escolha uma opção: " OPCAO
echo
case $OPCAO in
	1) GARQ ;;
	2) GUSR ;;
	3) GRED ;;
	4) GDIS ;;
	5) GREP ;;
	6) echo; exit 0 ;;
	*) read -p 'Opção Inválida.' PPP; MENU ;;
esac

}


#################### Programa ####################
clear
read -p "Digite o nome do seu usuário: " USUARIO
read -s -p "Digite a sua senha: " SENHA

[ $USER == $USUARIO] && [$PASS == $SENHA ] && MENU || exit 0
