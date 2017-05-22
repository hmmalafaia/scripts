#!/bin/bash

# bloco initialiaze
declare -A times


# passo 1: leitura da linha
while read LINHA; do
    # passo 2: identificação dos componentes da linha
    nome_time=${LINHA%%;*}
    jogador=${LINHA#*;}

    # passo 3: alterar o conteúdo do time 
    time=${times[${nome_time}]}
    time=${time:+${time},}${jogador}
    times[${nome_time}]="${time}"
done

for time in "${!times[@]}"; do
    echo "${time};${times[${time}]}" 
done

#creditos e agradecimentos a http://bit.ly/2qar94r
