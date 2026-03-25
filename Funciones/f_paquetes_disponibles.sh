#!/usr/bin/env bash

#Autor:María Navarro Velasco
#Descripción: Busca el paquete en cuestión y nos dice si está disponible
#             en source.list.
#Entrada: El nombre del paquete.
#Salida: Si está disponible.
f_paquete_disponible() {
    local pkg="$1"

    if [ -z "$pkg" ]; then
        return 1
    fi


    if apt-cache show "$pkg" >/dev/null 2>&1; then

        return 0

    else
        return 1
    fi
}
f_paquete_disponible "$1"
