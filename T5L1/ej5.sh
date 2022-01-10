#!/bin/bash
#En aquest script farem un bucle de sumes
#Roberto Martinez Avendaño
#06/01/2022

sum=0
numint=0
num=1

while [ $num -ne 0 ];
do 
read num
numint=$(($numint+1))
sum=$(($sum+$num))
done
mitja=$(($sum/$numint))

echo "La suma introduia es $sum y la mitja es $mitja"
