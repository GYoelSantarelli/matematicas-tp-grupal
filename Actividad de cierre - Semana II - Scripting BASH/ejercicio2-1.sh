#!/bin/bash
#Crea un script que defina dos variables numéricas y muestre la suma, resta, multiplicación y división entre ellas. 
num1=8
num2=2
echo "suma: $num1 + $num2 = $((num1 + num2))"
echo "resta: $num1 - $num2 = $((num1 - num2))"
echo "multiplicación: $num1 * $num2 = $(($num1 * $num2))"
echo "división: $num1 / $num2 = $(($num1 / $num2))"
