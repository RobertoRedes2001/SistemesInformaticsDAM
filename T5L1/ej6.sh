#!/bin/bash
#A aquest script farem un calcul d'aigua
#Roberto Martinez Avendaño
#06/01/2022

echo "Afig els llitres d'aigua: "
read num
costcent=0

if [ $num -le 50 ];
then
for (( i=0; i<$num; i++ ))
do
costcent=$(($costcent+4))
done
else
if [ $num -le 200 ];
then
costcent=200
for (( i=50; i<$num; i++ ))
do
costcent=$(($costcent+2))
done
else
costcent=500
for (( i=200; i<$num; i++ ))
do
costcent=$(($costcent+1))
done
fi
fi

cost=$(($costcent/10))
if [ $cost -gt 0 ];
then echo "El cost del aigua es de $cost€"
else echo "Bobo o que?"
fi
