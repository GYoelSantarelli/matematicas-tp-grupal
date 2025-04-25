#Muestra al usuario las operaciones lógicas disponibles
print("Operaciones disponibles: AND, OR, NOT, NAND, NOR, XOR, XNOR")
operacion = input("Ingrese la operación lógica que desea usar: ").strip().upper()   #.strip() elimina espacios al principio o al final del texto ingresado.
                                                                                    #.upper() pasa todo a mayúsculas

#Pide al usuario que elija una operación y la convierte a mayúsculas para evitar errores de comparación
print("Tabla de verdad para:", operacion)
print("----------------------------")

# Si el usuario eligió la operación NOT, solo necesita una variable(A)
if operacion == "NOT":
    print("A | NOT A") # Encabezado de la tabla
    for a in [False, True]: # Recorre los valores posibles de A
        print(int(a), "|", int(not a)) # Muestra el resultado de aplicar NOT a la variable A

# Si elige alguna operación que necesita dos variables
elif operacion in ["AND", "OR", "NAND", "NOR", "XOR", "XNOR"]:
    print ("A | B |", operacion) # Encabezado de la tabla
    for a in [False,True]: # Recorre valores posibles de la variable A
        
        for b in [False, True]: # Recorre valores posibles de la variable B
            
            # Resultado de la operación seleccionada
            if operacion == "AND": #Todas las opciones son falsas excepto cuando ambas son verdaderas
                resultado = a and b
           
            elif operacion == "OR": # Todas las opciones son verdaderas excepto cuando ambas son falsas
                resultado = a or b
            
            elif operacion == "NAND": # Operación AND negado
                resultado = not (a and b)
            
            elif operacion == "NOR": # Operación OR negado
                resultado = not (a or b) 
            
            elif operacion == "XOR": # Solo es verdadero si las dos variables son distintas entre ellas
                resultado = a != b
            
            elif operacion == "XNOR": # Solo es verdadero si las dos variables son iguales entre ellas
                resultado = a == b

            #Imprime la fila de la tabla dependiendo de la opción elegida anteriormente
            print (int(a), "|", int(b), "|", int(resultado))

# Si el usuario no eligue una de las opciones, muestra este mensaje 
else:
    print("Operación no reconocida. Seleccione una: AND, OR, NOT, NAND, NOR, XOR, XNOR.") # Mensaje de error