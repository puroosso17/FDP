#!/bin/bash
clear
###############Comandos##################
function criar(){
	TH=$(dialog --stdout						\
	--title 'Criação'						\
	--inputbox 'voce deseja criar arquivo(a) ou diretorios(d)'	\
	0 0)
#########################################
	if [ $TH == "A" ]; then
	A=$(dialog --stdout						\
	--title 'Criação'						\
	--inputbox 'Qual o nome do arquivo que deseja criar?'		\
	0 0)
	touch $A
	fi
		if [ $TH == "D" ]; then
		D=$(dialog --stdout						\
		--title 'Criação'						\
		--inputbox 'Qual o nome do diretório que deseja criar?'		\
		0 0)
		mkdir $D
		fi
}
#########################################
function copiar(){
	TH=$(dialog --stdout						\
	--title 'Copiar'						\
	--inputbox 'Voce deseja copiar arquivo(A) ou diretorios(D)'	\
	0 0)
#########################################
	if [ $TH == "A" ]; then
	A=$(dialog --stdout						\
	--title 'Criação'						\
	--inputbox 'Qual nome do arquivo voce deseja copiar?'			\
	0 0)
	D=$(dialog --stdout						\
	--title 'Criação'						\
	--inputbox 'Para qual diretorio você deja colar?'		\
	0 0)
	cp $A $D
	fi
		if [ $TH == "D" ]; then
		A=$(dialog --stdout						\
		--inputbox 'Qual nome do diretorio que voce deseja copiar?'			\
		0 0)
		D=$(dialog --stdout						\
		--title 'Criação'						\
		--inputbox 'Para onde você deja colar?'				\
		0 0)
		cp $A $D
		fi

}
#########################################
function remover(){
	TH=$(dialog --stdout						\
	--title 'Remover'						\
	--inputbox 'Voce deseja remover arquivo(A) ou diretorios(D)'	\
	0 0)
#########################################
	if [ $TH == "A" ]; then
	A=$(dialog --stdout						\
	--title 'Remoção'						\
	--inputbox 'Qual o nome do arquivo que deseja remover?'		\
	0 0)
	rm $A
	fi
		if [ $TH == "D" ]; then
		D=$(dialog --stdout						\
		--title 'Remoção'						\
		--inputbox 'Qual o nome do diretório que deseja remover?'		\
		0 0)
		rm -rf $D
		fi
}
#########################################
function Renomear(){
	TH=$(dialog --stdout						\
	--title 'Renomear'						\
	--inputbox 'Voce deseja reanomer arquivo(A) ou diretorios(D)'	\
	0 0)
#########################################
	if [ $TH == "A" ]; then
	A=$(dialog --stdout						\
	--title 'Renomear'						\
	--inputbox 'Qual o nome do arquivo que deseja renomear?'		\
	0 0)
	mv $A .
	fi
		if [ $TH == "D" ]; then
		D=$(dialog --stdout						\
		--title 'Renomear'						\
		--inputbox 'Qual o nome do diretório que deseja renomear?'		\
		0 0)
		mv $D .
		fi
}
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
		*) opção desconhecida ;;
	esac
