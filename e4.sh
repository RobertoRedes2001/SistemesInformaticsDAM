#!/bin/bash

maxlineas=`cat numeros.txt | wc -l`
cont=1
contImpar=0
contPar=0

#total=0

while [ $cont -le $maxlineas ]; 
do
    num=`cat numeros.txt | head -$cont | tail -1 | awk '{print $0}'`
    resto=$((num%2))
    if [ $resto -eq 0 ]; then
        echo "El número $num es par"
		contPar=$((contPar + 1))
    else 
        echo "El número $num es impar"
		contImpar=$((contImpar + 1))
    fi
        #total=$((total+litros))
    cont=$((cont+1))    
done

echo "Total números pares: $contPar"
echo "Total números impares: $contImpar"