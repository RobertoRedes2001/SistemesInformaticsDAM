#!/bin/bash
#En aquest script veurem un programa que en base al numere posat ens diu el dia de la setmana
#Roberto Martinez Avendaño
#06/01/2022

read -p "Dame un dia" dia

cont=0

while [ true ]
do 
    for i in lunes martes miercoles jueves viernes sabado domingo
    do
    cont=$((cont+1))
    if [ $cont -eq $dia ]
        then echo "El dia es $i"
        exit
    fi
    done 
done