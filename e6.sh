#!/bin/bash

cd $1

num=`ls *.txt| wc -l`
borrar=`rm *.txt`
echo "Se han borrado $num" 

