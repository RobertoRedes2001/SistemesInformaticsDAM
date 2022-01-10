#!/bin/bash
#Aquest Script et mostra cual es major o minor en base a un nombre introuit per teclat
#Script fet per Roberto Martinez
#06/01/2022

echo "Introduix un numere: "
read num1
echo "Introduix altre numere: "
read num2

if [ $num1 -lt $num2 ];
then echo "$num1 es menor que $num2"
fi
if [ $num1 -eq $num2 ];
then echo "Ambos numeres son iguals."
fi
if [ $num1 -gt $num2 ];
then echo "$num1 es major que $num2"
fi



