#!/usr/bin/env bash

#Autor:María Navarro Velasco
#Descripción: Muestra si hay conexión.
#ENtrada: Ninguna.
#Salida: 0 si hay, 1 si no.


f_hay_conexion()
{
  if ping -c 1 -q 0.0.0.0; then
        return 0

  else
        return 1
  fi
}
f_hay_conexion
