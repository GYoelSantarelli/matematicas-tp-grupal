#!/bin/bash

read -p "Ingresa la nota (0-10): " nota

if ! [[ "$nota" =~ ^[0-9]+$ ]] || [ "$nota" -lt 0 ] || [ "$nota" -gt 10 ]; then
    echo "Error, La nota debe ser un número entre 0 y 10."
    exit 1
fi

if [ "$nota" -lt 6 ]; then
    echo "Reprobado"
elif [ "$nota" -ge 6 ] && [ "$nota" -le 8 ]; then
    echo "Aprobado"
else
    echo "Excelente"
fi
