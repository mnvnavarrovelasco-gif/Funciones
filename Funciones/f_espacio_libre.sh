#!/usr/bin/env bash

#Autor:María Navarro Velasco
#Descripción:Introduces el espacio que necesitas tener y el punto de montaje en cuestión y te devuelve un 0 si hay y un 1 si no.
#Versión: 
#Entrada:Punto de montaje y porcentaje de espacio minimo. 
#Salida:0 si hay espacio, 1 si no.

function f_espacio_libre() {
 espacio_usado=$(df -h "$1" 2>/dev/null | tail -1 | awk '{print $5}' | sed 's/%//');
 espacio_disponible=$((100 - espacio_usado))

 if [ -z "$espacio_usado" ]; then
  echo "Error: Punto de montaje '$1' no existe"; 
  return 1
 fi

 if [ $espacio_disponible -ge ${2:-10} ]; then
  return 0;
 else
  return 1;
 fi

}

f_espacio_libre "$1" "$2"
