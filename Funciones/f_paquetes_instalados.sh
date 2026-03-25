#!/usr/bin/env bash

#Autor:María Navarro Velasco
#Descripción: Indica si un paquete está instalado o no.
#Entrada: Paquete.
#Salida: 1 si no está, 0 si lo encuentra.

f_paquetes_instalados() {
dpkg -l "$1" &>/dev/null
}

f_paquetes_instalados $1

