#!/bin/bash
#En aquest script donarem un numere matjor a 0 i farem un bucle que acabe al llegar a aquest numere.
#Roberto Martinez Avendaño
#06/01/2022

echo "Introduix un numere matjor que 0: "
read num
if [ $num -gt 0 ];
then
for ((i=0;i<$num+1;i++))
do
echo "$i"
done
else echo "Bobo o que?"
fi
