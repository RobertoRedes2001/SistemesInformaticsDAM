#!/bin/bash

lineas=`cat listado.txt | wc -l`
contador=0
TLinx=0
TWind=0
ProcLinx=0
ProcWind=0
sistema="Linux"

while [ $contador -le $lineas ];
do
	contador=$(($contador+1))
	sistema=`cat listado.txt | head -$contador | tail -1 | awk '{print $2}'`
	if [ $sistema = "Linux" ];
	then 
		TLinx=$(($TLinx+1))
		procesos=`cat listado.txt | head -$contador | tail -1 | awk '{print $3}'`
		ProcLinx=$((ProcLinx+procesos))
	else
		TWind=$(($TWind+1))
		procesos=`cat listado.txt | head -$contador | tail -1 | awk '{print $3}'`
		ProcWind=$((ProcWind+procesos))
	fi
done

echo "Linux -> $TLinx $ProcLinx"
echo "Windows -> $TWind $ProcWind"

