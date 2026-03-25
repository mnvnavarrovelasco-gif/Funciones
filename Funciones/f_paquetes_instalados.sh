#!/usr/bin/env bash

#Autor: 
#Descripción: 
#Versión: 

f_paquetes_instalados() {
dpkg -l "$1" &>/dev/null
}

f_paquetes_instalados $1

