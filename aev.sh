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
		usuarioLin=`cat usuarios.txt | head -$contador | tail -n1 | awk '{print $1}'`
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
    read -p "Introdueix un mes: " miMes
    totalLineas=`cat usuarios.txt | wc -l`
    cont=1
    while [ $cont -le $totalLineas ]
    do
        diaMes=`cat usuarios.txt | head -n$cont | tail -n1 | awk '{print $2}'`
        mes=`cat usuarios.txt | head -n$cont | tail -1 | awk '{print $3}'`
            if [ $mes = $miMes ] 
            then
                echo "$diaMes"
            fi
        cont=$((cont+1))
    done
fi

if [ $opcion -eq 3 ];
then
	read -p "Introdueix un mes: " mes
	read -p "Introdueix un dia: " dia
	totalLineas=`cat usuarios.txt | wc -l`
	cont=1
	a=0
	while [ $cont -le $totalLineas ];
	do
		meses=`cat usuarios.txt | head -$cont | tail -n1 | awk '{print $3}'`
		diass=`cat usuarios.txt | head -$cont | tail -n1 | awk '{print $2}'`
		usuarios=`cat usuarios.txt | head -$cont | tail -n1 | awk '{print $1}'`
		if [ $mes = $meses ]; then
 		if [ $dia = $diass ]; then
		 echo $usuarios
 		fi
		a=$((a+1))
		fi
		cont=$((cont+1))
	done
	if [ $a = 0 ]; then
	echo "Nadie se ha conectado en esa fecha."
	fi
fi
if [ $opcion -eq 4 ];
then
	read -p "Introduix el nom d'un usuari: " user
	totalLin=`cat usuarios.txt | wc -l`
	contador=1
	coincidencias=0
	while [ $contador -le $totalLin ];
	do
		usuarioLin=`cat usuarios.txt | head -$contador | tail -n1 | awk '{print $1}'`
		
		if [ $user = $usuarioLin ];
		then
		coincidencias=$((coincidencias+1))
		result=`cat usuarios.txt | head -$contador | tail -n1 | awk '{print $1,$2,$3}'`
		fi
	contador=$((contador+1))
	done
	if [ $coincidencias -eq 0 ];
	then
	echo "$user no s'ha logejat"
	else
	echo "$result"
	fi
fi
sleep 3s
clear
done
