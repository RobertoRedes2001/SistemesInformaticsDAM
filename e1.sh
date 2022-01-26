#!/bin/bash

lineas=`cat nombres.txt | wc -l`
cont=1
while [ $cont -le $lineas ]; do
nombre=`cat nombres.txt | head -$cont | tail -1`
mkdir $nombre
cont=$((cont+1))
cd $nombre
for i in `seq 1 $1`; do
mkdir Personal$i
done
cd ..
done


