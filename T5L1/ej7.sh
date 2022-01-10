#!/bin/bash
#En aquest script veurem un programa que en base al numere posat ens diu el dia de la setmana
#Roberto Martinez Avendaño
#06/01/2022

echo "Posa un dia entre 1 y 30"
read num
numori=$num

while [ $num -gt 7 ];
do
num=$(($num-7))
done

case $num in
1)dia="Dilluns" ;;
2)dia="Dimarts" ;;
3)dia="Dimecres" ;;
4)dia="Dijous" ;;
5)dia="Divendres" ;;
6)dia="Disabte" ;;
7)dia="Diumenge" ;;
esac

if [ $numori -gt 30 ];
then echo "Bobo o que?"
else
if [ $numori -lt 1 ];
then echo "Bobo o que?"
else
echo "El dia $numori es $dia"
fi
fi
