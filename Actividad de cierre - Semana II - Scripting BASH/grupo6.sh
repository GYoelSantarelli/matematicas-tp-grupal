#!/bin/bash

menu(){
	clear
	echo "         MENU - PUNTO N°6 - MANIPULACIÓN DE CADENAS"
	echo
    echo "        Ejercicio 6.1: Extraer primeros 8 caracteres        1"
    echo "        Ejercicio 6.2: Reemplazar 'error' por 'problemita'  2"
    echo "        Ejercicio 6.3: Convertir texto a minúsculas         3"
	echo "        Acerca de...                                        4"
	echo
	echo
	echo "        Salir!                                              7"
}

ejercicio_6_1() {
    until [ "$opcion" == "n" ] 
	do    
    echo "Ejercicio 6.1 - Extraer primeros 8 caracteres de una cadena"
    read -p "Ingresa una cadena: " cadena
    
    primeros_8="${cadena:0:8}"
    
    echo "Los primeros 8 caracteres son: $primeros_8"
    echo
    echo
    echo "Desea repetir? s = Si, n = No"
		read opcion
	done
}

# Ejercicio 6.2: Reemplazar 'error' por 'problemita'
ejercicio_6_2() {
    until [ "$opcion" == "n" ] 
	do   
    echo "Ejercicio 6.2 - Reemplazo de texto"

    read -p "Ingresa un texto que contenga la palabra 'error': " texto

    texto_modificado=$(echo "$texto" | sed 's/error/problemita/g')

    echo "Texto modificado:"
    echo "$texto_modificado"
    echo
    echo    
    echo "Desea repetir? s = Si, n = No"
		read opcion
	done
}

# Ejercicio 6.3: Convertir texto a minúsculas
ejercicio_6_3() {
    until [ "$opcion" == "n" ] 
	do 
    echo "Ejercicio 6.3 - Convertir texto a minúsculas"

    read -p "Ingresa un texto: " texto

    texto_minusculas=$(echo "$texto" | tr '[:upper:]' '[:lower:]')

    echo "Texto en minúsculas:"
    echo "$texto_minusculas"
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
		1)ejercicio_6_1
		  ;;
		2)ejercicio_6_2
		  ;;
		3)ejercicio_6_3
		  ;;
		4)acercade
		  ;;
	esac
	menu
	read -p "Ingrese opcion :" opcion
done
