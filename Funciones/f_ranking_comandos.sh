#!/usr/bin/env bash
#Descripción: Muestra por pantalla los 10 comandos más usados de la shell. 
#Entrada: Ninguna
#Salida: Histórico de shell
f_ranking_comandos() {
cat ~/.bash_history | awk '{print $1}' | sort | uniq -c | sort -nr | head -10
return 0
}
f_ranking_comandos 
