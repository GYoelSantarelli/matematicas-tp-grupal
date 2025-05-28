#!/bin/bash

read -p "Ingresar edad: " edad

if ! [[ "$edad" =~ ^[0-9]+$ ]]; then
	echo "Error. Por favor ingresa un número entero positivo"
	exit 1
fi

if [ "$edad" -ge 18 ]; then
	echo "Eres mayor de edad"
else
	echo "Eres menor de edad"
fi
