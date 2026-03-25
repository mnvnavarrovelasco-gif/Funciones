#!/usr/bin/env bash

#Nombre:
#Versión:
#Descripción:


f_hay_conexion()
{
  if ping -c 1 -q 0.0.0.0; then
        return 0

  else
        return 1
  fi
}
f_hay_conexion
