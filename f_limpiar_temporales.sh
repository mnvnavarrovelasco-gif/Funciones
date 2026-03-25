#!/usr/bin/env bash
#Descripción: Borra archivos antiguos en un directorio específico.
# Entrada:
 # $1: Ruta del directorio.
 # $2: Antigüedad en días (ej: 7 para borrar archivos de más de una semana).
# Devuelve:
 # 0: Limpieza realizada.
 # 1: Directorio no encontrado.
#Como usar:
#  0	Hoy (desde medianoche)	bash f_limpiar_temporales.sh /tmp 0
#  1	Ayer y anteriores	bash f_limpiar_temporales.sh /tmp 1
# +1	Más de 1 día	bash f_limpiar_temporales.sh /tmp +1
# -1	Últimas 24h	bash f_limpiar_temporales.sh /tmp -1

f_limpiar_temporales() {
    dir="$1"
    dias="$2"

    # Verificar si el directorio existe
    if [ ! -d "$1" ]; then
        return 1
    fi

    # Borrar archivos más antiguos que los días indicados
    find "$1" -type f -mtime +"$2" -exec rm -f {} \;

    return 0
}
f_limpiar_temporales $1 $2
