#!/bin/bash
clear
###############Comandos##################
criar(){ dialog --stdout						\
	--title 'Criação'						\
	--inputbox 'voce deseja criar arquivo(a) ou diretorios(d)'	\
	0 0
	read asd
		if [ "$asd" == a ]; then
		echo "deu certo!!"
		fi
}
#########################################
#copiar(){
#}
#########################################
#remover(){
#}
#########################################
#renomear(){
#}
#########################################
	menu=$(
	dialog --stdout 		\
	--title 'Opções'		\
	--menu 'escolha uma opção:'	\
	0 0 0				\
	1 'criar'			\
	2 'copiar'			\
	3 'remover'			\
	4 'renomear'			\
	5 'sair'			)

	case $menu in
		1) criar ;;
		2) copiar ;;
		3) remover ;;
		4) renomear ;;
		5) sair ;;
		*) "opção desconhecida." ;;
	esac
