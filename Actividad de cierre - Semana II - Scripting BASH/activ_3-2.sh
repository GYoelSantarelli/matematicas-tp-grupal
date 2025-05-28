#!/bin/bash


read -p "Ingresa nombre del archivo: " archivo

if [ -f "$archivo" ]; then
    echo "El archivo existe."
else
    echo "El archivo no existe."
fi
