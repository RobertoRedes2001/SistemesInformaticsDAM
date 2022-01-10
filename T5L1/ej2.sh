#!/bin/bash
#En aquest script comprobarem si un numere es parell o senar
#Roberto Martinez
#06/01/2022

echo "Introuix un numere: "
read num
let res=$num%2

if [ $res -eq 0 ];
then echo "$num es parell"
else echo "$num es senar"
fi


