#Actividad 2
numero_entero = int(input("Ingrese un numero entero: "))
i = 0
while numero_entero > 0:
    i += 1
    numero_entero //= 10
if i < 0:
    print("ingrese otro numero mayor que 0")
else:
    print (f"El numero tiene {i} digintos")