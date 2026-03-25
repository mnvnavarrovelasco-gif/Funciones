#!/usr/bin/env bash
#Autor:
#Descripción: Registra un evento en un archivo de log cronológico.
#Entrada: Mensaje de texto a registrar.
#Salida: Si se ha registrado o no.

f_log() {
    mensaje="$1"
    fichero="${2:-/var/log/sysadmin.log}"
    fecha=$(date "+%Y-%m-%d %H:%M:%S")
    echo "[$fecha] $mensaje" >> "$fichero" 2>/dev/null
}

f_log "$1" "$2"
