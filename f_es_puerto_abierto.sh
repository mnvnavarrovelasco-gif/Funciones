#!/usr/bin/env bash

# f_puerto_abierto
# Descripción: Verifica si un servicio está escuchando en un puerto TCP específico.
# Entrada:
#   $1: Dirección IP o hostname
#   $2: Número de puerto
# Salida:
#   Código retorno 0 -> puerto abierto y responde
#   Código retorno 1 -> puerto cerrado o inalcanzable

f_puerto_abierto() {
    local host="$1"
    local port="$2"
    local timeout_s=3


    if [ -z "$host" ] || [ -z "$port" ]; then
        return 1
    fi


    case "$port" in
        ''|*[!0-9]*)
            return 1
            ;;
    esac


    if timeout "$timeout_s" bash -c ":</dev/tcp/${host}/${port}" 2>/dev/null; then
        return 0
    else
        return 1
    fi
}
f_puerto_abierto $1 $2 
