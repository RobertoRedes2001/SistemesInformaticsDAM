#!/bin/bash
#En aquest script anem a ver la resposta en base a una nota.
#06/01/2022
#Roberto Martinez Avendaño

echo "Introduix una nota:"
read nota

if [ $nota -gt 10 ];
then echo "Aquesta nota no existix"
else
if [ $nota -lt 0 ];
then echo "Aquesta nota no existix"
else
if [ $nota -ge 9 ];
then echo "Excelent"
else
if [ $nota -gt 6 ];
then echo "Notable"
else
if [ $nota -eq 6 ];
then echo "Be"
else
if [ $nota -eq 5 ];
then echo "Aprovat"
else echo "Suspes"
fi
fi
fi
fi
fi
fi


