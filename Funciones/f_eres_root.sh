#!/usr/bin/env bash

#Autor: 
#Descripción: 
#Versión: 

f_eres_root() {
    if [ "$(id -u)" -eq 0 ]; then
        return 0
    else
        return 1
    fi
}
f_eres_root
