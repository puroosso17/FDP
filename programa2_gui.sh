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

#################### Funções #####################
function CARQ(){
NAME=$( dialog					\
	--stdount				\
	--title 'Nome'				\
	--inputbox 'Digite o nome do arquivo'	\
	0 0)

#------------------------------------------------

> $NOME # Criou Arquivo

#------------------------------------------------
(dialog	--title 'Sucesso'			\
	--msgbox 'Arquivo criado com sucesso'	\
	0 0 # Confirmou a criação do arquivo
#------------------------------------------------

ls -la $(pwd $NOME) > /tmp/list.txt
dialog --title 'Exibondo arquivo criado'	\
	--textbox /tmp/list.txt			\
	0 0 # Lista o arquivo em seu diretório
#------------------------------------------------
GARQ # Volta para o Gerenciador de arquivos

}

function AARQ(){

}

function GARQ(){
##################################################
#echo "Função GARQ"
#read -p 'Precione [enter] para finalizar' PPP
#----------------------
OPCAO=$( dialog					\
	--stdout				\
	--title 'Gerenciamento de Arquivos'	\
	--menu 'Escolha uma opção'		\
	0 0 0					\
		1 'Criar Arquivos'		\
		2 'Apagar Usuario'		\
		3 'Criar Diretório'		\
		4 'Gerenciar Dispositivos'	\
		5 'Gerenciar Repositório'	\
		6 'Sair')

case $OPCAO in
	1) CARQ ;;
	2) AARQ ;;
	3) CDIR ;;
	4) ADIR ;;
	5) LDIR ;;
	6) echo; exit 0 ;;
	*) read -p 'Opção Inválida.' PPP; MENU ;;
#-------------------
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
OPCAO=$( dialog					\
	--stdout				\
	--title 'Menu Principal'		\
	--menu 'Escolha uma opção'		\
	0 0 0					\
		1 'Gerenciar Arquivos'		\
		2 'Gerenciar Usuario'		\
		3 'Gerenciar Rede'		\
		4 'Gerenciar Dispositivos'	\
		5 'Gerenciar Repositório'	\
		6 'Sair')

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
function SAIR(){
clear
exit 0
}

#################### Programa ####################

clear
#########read -p "Digite o nome do seu usuário: " USUARIO

USUARIO=$(dialog					\
	--stdout					\
	--title 'Usuário'				\
	--inputbox 'Digite o nome do seu usuário:'	\
	0 0)

##################read -s -p "Digite a sua senha: " SENHA

SENHA=$(dialog						\
	--stdout					\
	--title 'Senha'					\
	--passwordbox 'Digite a sua senha:'		\
	0 0)

[ $USER == $USUARIO ] && [ $PASS == $SENHA ] && MENU || SAIR
