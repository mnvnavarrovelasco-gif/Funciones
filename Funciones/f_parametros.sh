#!/usr/bin/env bash

#Autor: 
#Descripción: 
#Versión: 

f_parametros() {
  if [ $# -eq 0 ]; then
	echo "Error"
	return 1
  fi
}
f_parametros "$@"
