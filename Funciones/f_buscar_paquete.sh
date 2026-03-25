#!/usr/bin/env bash

#Autor: 
#Descripción: 
#Versión: 

f_buscar_paquete() {
dpkg -S $(which $1 2>/dev/null) 2>/dev/null | cut -d: -f1
}
f_buscar_paquete "$1"
