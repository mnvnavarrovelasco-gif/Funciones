#!/usr/bin/env bash

#Autor: Daniel Ortiz Pinto
#Descripción: Valida sintácticamente si una cadena tiene formato de IPv4.
#Entrada: Cadena de texto a validar.
#Salida: Si el formato de IP correcto o inválido (imprime error por stderr).

f_es_ip_valida() {
    ip="$1"

    if [[ ! $ip =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
        echo "Error: IP inválida" >&2
        return 1
    fi

    IFS='.' read -r o1 o2 o3 o4 <<< "$ip"

    for octeto in $o1 $o2 $o3 $o4; do
        if [ "$octeto" -lt 0 ] || [ "$octeto" -gt 255 ]; then
            echo "Error: IP inválida" >&2
            return 1
        fi
    done

    return 0
}
f_es_ip_valida $1
