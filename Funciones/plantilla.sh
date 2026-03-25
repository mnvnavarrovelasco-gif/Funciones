#! /usr/bin/env bash
set -x 
echo "Añade un nombre para el fichero(.sh):"

read fichero

cat <<FIN > $fichero 
#!/usr/bin/env bash

#Autor: 
#Descripción: 
#Versión: 

FIN

function funcion() {
  echo "Estoy dentro de la función"
  echo "Sigo dentro"
}

funcion 

set +x 
