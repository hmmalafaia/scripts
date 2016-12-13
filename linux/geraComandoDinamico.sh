#!/bin/bash

#Substituir todo '!' da variável comando
#Pela linha do arquivo input.txt
#Colar no arquivo output.txt

comando="\"C:\Program Files (x86)\WinRAR\Rar.exe\" a \"C:\estabelecimento_!\" \"C:\estabelecimento_!\*.16*\" del C:\estabelecimento_!\*.16*\""
while read lj
do
temp=$(echo $lj|tr -d '\r') #Remover quebra de linha ao capturar a linha do input.txt
echo $comando | sed 's/!/'"$temp"'/g' >> output.txt
done < input.txt
