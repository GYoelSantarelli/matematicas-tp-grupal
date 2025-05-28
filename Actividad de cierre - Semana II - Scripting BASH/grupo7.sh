#!/bin/bash

menu(){
	clear
	echo "         MENU - PUNTO N°7 - SCRIPTS COMBINANDO CONCEPTOS"
	echo
    echo "        Ejercicio 7.1: Verificación para votar                      1"
    echo "        Ejercicio 7.2: Saludos personalizados desde 'nombres.txt'   2"
    echo "        Ejercicio 7.3: Bucle para leer 5 números                    3"
	echo "        Acerca de...                                                4"
	echo
	echo
	echo "        Salir!                                              7"
}
ejercicio_7_1(){
    clear
    until [ "$opcion" == "n" ]
	do
    echo "Ejercicio 7.1 - Verificación para votar"

    read -p "Ingresa tu nombre: " nombre
    read -p "Ingresa tu edad: " edad

    if [[ $edad -ge 16 ]]; then
        echo "$nombre, tienes $edad años. Puedes votar."
    else
        echo "$nombre, tienes $edad años. No puedes votar todavía."
    fi
    echo
    echo
    echo "Desea repetir? s = Si, n = No"
		read opcion
	done
}
ejercicio_7_2(){
    clear    
    until [ "$opcion" == "n" ]
	do
    echo "Ejercicio 7.2 - Saludos personalizados desde 'nombres.txt'"

    if [[ ! -f "nombres.txt" ]]; then
        echo "Error: El archivo 'nombres.txt' no existe."
        exit 1
    fi

    while IFS= read -r nombre; do
        if [[ -n "$nombre" ]]; then
            echo "Hola, $nombre. ¡Que tengas un excelente día!"
        fi
    done < "nombres.txt"
    echo
    echo
    echo "Desea repetir? s = Si, n = No"
		read opcion
	done
}
ejercicio_7_3(){
    clear   
    until [ "$opcion" == "n" ]
	do
    echo "Ejercicio 7.3 - Promedio de 5 números"

    suma=0

    # Bucle para leer 5 números
    for i in {1..5}; do
        read -p "Ingresa el número $i: " num
        if ! [[ "$num" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
            echo "Valor inválido. Por favor ingresa un número."
            ((i--))
            continue
        fi
        suma=$(echo "$suma + $num" | bc)
    done

    promedio=$(echo "scale=2; $suma / 5" | bc)

    echo "El promedio de los 5 números es: $promedio"
    echo    
    echo
    echo "Desea repetir? s = Si, n = No"
		read opcion
	done
}
acercade(){
	clear
	echo "Integrantes del GRUPO N° 5 - Comisión 21"
	echo
	echo " * Ruff Luca"
	echo " * Salvatierra Ezequiel"
	echo " * Salas Fabián Alejandro"
	echo " * Santarelli Yoel"
	echo
	echo "Presione cualquier tecla para continuar..."
	read
}

menu
read -p "Ingrese opción :" opcion

while [ $opcion -ne 7 ]; do
	case "$opcion" in
		1)ejercicio_7_1
		  ;;
		2)ejercicio_7_2
		  ;;
		3)ejercicio_7_3
		  ;;
		4)acercade
		  ;;
	esac
	menu
	read -p "Ingrese opcion :" opcion
done
