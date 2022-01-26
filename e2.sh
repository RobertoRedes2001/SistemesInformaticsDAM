#!/bin/bash

maxlineas=`cat precipitaciones.txt | wc -l`
cont=1
total=0

while [ $cont -le $maxlineas ]; do
litros=`cat precipitaciones.txt | head -$cont | tail -1 | awk '{print $2}'`
total=$((total+litros))
cont=$((cont+1))
done

media=$((total/maxlineas))
echo "La media es $media"
