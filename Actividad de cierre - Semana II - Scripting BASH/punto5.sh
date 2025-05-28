#!/bin/bash

menu(){
	clear
	echo "         MENU - PUNTO N°5 - ENTRADA DEL USUARIO"
	echo
	echo "        Punto 5.1 - Lectura de datos              1"
	echo "        Punto 5.2 - Cantidad de caracteres        2"
	echo "        Punto 5.3 - Clave                         3"
	echo "        Acerca de...                              4"
	echo
	echo
	echo "        Salir!                                    7"
}

punto51_mayusculas(){
	until [ "$opcion" == "n" ] 
	do
		clear
		echo "Ingrese Apellido :"
		read apellido
		echo "Ingrese nombre :"
		read nombre
		echo
		echo "${apellido^^} ${nombre^^}"
		echo
		echo "Desea repetir? s = Si, n = No"
		read opcion
	done
}

punto52_caracteres(){
        until [ "$opcion" == "n" ]
	do
		clear
        	echo "Ingrese una palabra :"
		read palabra
		echo
		longitud=${#palabra}
		echo "La palabra '$palabra' tiene $longitud caracteres."
		echo
		echo "Desea repetir? s = Si, n = No"
		read opcion
	done
}


punto53_clave(){
	clear	
	bandera=0
	while [ $bandera -eq 0 ];
	do
		read -s -p "Ingrese contraseña:" clave
		echo
		
		if [[ "$clave" == "1234" ]]; then		
			bandera=1
		else
			echo "Contraseña incorrecta"
		fi
	done
	echo "Clave correcta!"
        read 
}


acercade(){
	clear
	echo "Integrantes del GRUPO N° 5 - Comisión 21"
	echo
	echo " * Ruff Luca"
	echo " * S. Ezequiel"
	echo " * Salas Fabián Alejandro"
	echo " * Santarelli Yoel"
	echo
	echo "Presione cualquier tecla para continuar..."
	read
}


# Aquí empieza el programa principal

menu
read -p "Ingrese opción :" opcion

while [ $opcion -ne 7 ]; do
	case "$opcion" in
		1)punto51_mayusculas
		  ;;
		2)punto52_caracteres
		  ;;
		3)punto53_clave
		  ;;
		4)acercade
		  ;;
	esac
	menu
	read -p "Ingrese opcion :" opcion
done	
