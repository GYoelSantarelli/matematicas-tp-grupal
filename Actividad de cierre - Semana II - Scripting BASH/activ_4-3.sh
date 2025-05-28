#!/bin/bash

contrasena_correcta="secreto"

contrasena=""

until [ "$contrasena" == "$contrasena_correcta" ]; do
    read -p "Ingresa la contraseña: " contrasena
    if [ "$contrasena" != "$contrasena_correcta" ]; then
        echo "Contraseña incorrecta, prueba de nuevo."
    fi
done

echo "¡Contraseña correcta!"
