#!/usr/bin/env bash

#Descripción: Comprueba si coinciden el hash introducido con el del archivo. 
#Entrada: ruta del archivo y el hash.
#Salida: 0 si está bien, 1 si no coincide.

function f_verificar_hash() {

hash=$(md5sum $1 | awk '{print $1}')
  if [ "$hash" = "$2" ]; then 
	return 0
  else 
	return 1
  fi
}
f_verificar_hash $1 $2 






