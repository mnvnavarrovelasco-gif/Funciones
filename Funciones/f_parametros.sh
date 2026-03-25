#!/usr/bin/env bash

#Autor:María Navarro Velasco
#Descripción: Comprueba si se han añadido parámetros.
#Entrada: Función con o sin parámetros.
#Salida: Devuelve 1 si no hay argumentos.

f_parametros() {
  if [ $# -eq 0 ]; then
	echo "Error"
	return 1
  fi
}
f_parametros "$@"
