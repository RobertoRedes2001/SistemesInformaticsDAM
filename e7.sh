#!/bin/bash

cd $1

DIR=`pwd`

if [ -d $DIR ];
then
num=`ls *.txt| wc -l`
borrar=`rm *.txt`
echo "Se han borrado $num" 
else
echo "El directorio suministrado no existe."
fi

