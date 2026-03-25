#!/usr/bin/env bash

#Autor: María Navarro Velasco
#Descripción: Comprueba si el usuario es o no root
#Entrada: ninguna.
#Salida: 0 si eres root, 1 si no. 

f_eres_root() {
    if [ "$(id -u)" -eq 0 ]; then
        return 0
    else
        return 1
    fi
}
f_eres_root
