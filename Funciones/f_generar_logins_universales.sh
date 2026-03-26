#!/usr/bin/env bash

# Autor: María Navarro Velasco
# Descripción: Genera identificadores en minúsculas procesando nombres y apellidos.
# Entrada: Fichero origen (CSV delimitado por ;) Fichero destino
# Salida: Ninguna

function f_generar_logins_universal() {

    origen="$1"
    destino="$2"

    >"$destino"

    while IFS=";" read nombre ap1 ap2 dni
    do
        iniciales=$(echo "$nombre" | awk '{for(i=1;i<=NF;i++) printf substr($i,1,1)}')

        apellido1=$(echo "$ap1" | cut -c1-3)
        apellido2=$(echo "$ap2" | cut -c1-3)

        ult_dni=$(echo "$dni" | tail -c 4)

        login=$(echo "$iniciales$apellido1$apellido2$ult_dni" | tr '[:upper:]' '[:lower:]')

        echo "$login" >> "$destino"

    done < "$origen"
}

f_generar_logins_universal "$1" "$2"
