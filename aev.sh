#!/bin/bash

opcion=0

while [ $opcion -ne 5 ]; 
do
echo "____________________________________"
echo "                                    "
echo "            BENBINGUT               "
echo "____________________________________"
echo "_1.Comprobar quantitat de logs     _"
echo "_2.Comprobar dias de conexio       _"
echo "_3.Comprobar log por fecha         _"
echo "_4.Comprobar ultim log             _"
echo "_5.Salir                           _"
echo "____________________________________"
read  -p "SELECCIONE UNA OPCION DEL MENU: " opcion

if [ $opcion -eq 1 ];
then
	read -p "Introduix el nom d'un usuari: " user
	totalLin=`cat usuarios.txt | wc -l`
	contador=1
	coincidencias=0
	while [ $contador -le $totalLin ];
	do
		usuarioLin=`cat usuarios.txt | head -$contador | tail -1 | awk '{print $1}'`
		if [ $user = $usuarioLin ];
		then
		coincidencias=$((coincidencias+1))
		fi
	contador=$((contador+1))
	done
	if [ $coincidencias -eq 0 ];
	then
	echo "$user no s'ha logejat"
	else
	echo "$user s'ha logejat $coincidencias veces"
	fi
fi

if [ $opcion -eq 2 ];
then
	read -p "Introduix el nombre d'un mes: " mes
	totalLin=`cat usuarios.txt | wc -l`
	cont=1
	coinMes=0
	echo "Llistat de dias de conexio aquest mes: "
	while [ $cont -le $totalLin ];
	do
		mesLin=`cat usuarios.txt | head -$cont | tail -1 | awk '{print $3}'`
		dia=`cat usuarios.txt | head -$cont | tail -1 | awk '{print $2}'`
		if [ $mes = $mesLin ];
		then
		echo $dia
		coinMes=$((coinMes+1))
		fi
	cont=$((cont+1))
	done
	if [ $coinMes -eq 0 ];
	then
	echo "No han hagut conexions aquest mes"
	fi
fi

if [ $opcion -eq 3 ];

done
