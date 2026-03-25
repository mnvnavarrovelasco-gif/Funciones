#!/usr/bin/env bash

#Autor: 
#Descripción: 
#Versión: 


function f_verificar_hash() {

hash=$(md5sum $1 | awk '{print $1}')
  if [ "$hash" = "$2" ]; then 
	return 0
  else 
	return 1
  fi
}
f_verificar_hash $1 $2 






