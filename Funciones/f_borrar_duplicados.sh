#!/usr/bin/env bash

#Autor: María Navarro Velasco
#Descripción: Busca archivos duplicados en el directorio introducido.
#Entrada: Modo CHECK o DELETE y el directorio.
#Salida: 1 si el directorio no existe, 0 si ha sido borrado con exito el archivo.

f_borrar_duplicados() {
    dir="$1"
    modo="$2"

    if [[ ! -d "$dir" ]]; then
        echo "Error: directorio no existe."
        return 1
    fi

    tmp=$(mktemp)

    find "$dir" -type f | while read file; do
        hash=$(md5sum "$file" | awk '{print $1}')
        if  grep -q "$hash" "$tmp"; then
            if [[ "$modo" == "CHECK" ]]; then
                echo "Archivo duplicado: $file"
            elif [[ "$modo" == "DELETE" ]]; then
                rm "$file"
                echo "Archivo eliminado: $file"
            fi
        else
            echo "$hash" >> "$tmp"
        fi
    done

    rm "$tmp"
    return 0
}
f_borrar_duplicados $1 $2
