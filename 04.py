from time import sleep #Importamos la funcion sleep de time 

while True:
    #Muestra al usuario las operaciones lógicas disponibles
    print("Seleccione una operación lógica:")
    print("1. AND")
    print("2. OR")
    print("3. NOT (solo para A)")
    print("4. NAND")
    print("5. NOR")
    print("6. XOR")
    print("7. XNOR")
    # Solicita al usuario que elija una operación lógica
    # y elimina los espacios en blanco al principio y al final
    operacion = input("Ingrese el número de la operación que desea realizar: ").strip()
    # Muestra para que operación va a realizar la tabla de verdad
    print("\nTabla de verdad para:", operacion)
    print("----------------------------")

    # Si el usuario eligió la operación NOT, solo necesita una variable(A)
    if operacion == 3:
        print("A | NOT A") # Encabezado de la tabla
        for a in [False, True]: # Recorre los valores posibles de A
            print(int(a), "|", int(not a)) # Muestra el resultado de aplicar NOT a la variable A

    # Si elige alguna operación que necesita dos variables
    elif operacion in ['1','2','3','4','5','6','7']: # Verifica si la operación está en el rango de 1 a 7
        operaciones = {'1': "AND",'2': "OR",'4': "NAND",'5': "NOR",'6': "XOR",'7': "XNOR"}
        print ("A | B |", operaciones[operacion]) # Encabezado de la tabla
        for a in [False,True]: # Recorre valores posibles de la variable A

            for b in [False, True]: # Recorre valores posibles de la variable B

                # Resultado de la operación seleccionada
                if operacion == '1': #Todas las opciones son falsas excepto cuando ambas son verdaderas
                    resultado = a and b

                elif operacion == '2': # Todas las opciones son verdaderas excepto cuando ambas son falsas
                    resultado = a or b

                elif operacion == '4': # Operación AND negado
                    resultado = not (a and b)

                elif operacion == '5': # Operación OR negado
                    resultado = not (a or b) 

                elif operacion == '6': # Solo es verdadero si las dos variables son distintas entre ellas
                    resultado = a != b

                elif operacion == '7': # Solo es verdadero si las dos variables son iguales entre ellas
                    resultado = a == b

                #Imprime la fila de la tabla dependiendo de la opción elegida anteriormente
                print (int(a), "|", int(b), "|", int(resultado))
        break # Finaliza el programa luego de mostrar la tabla de verdad
    # Si el usuario no eligue una de las opciones, muestra este mensaje 
    else:
        print("Operación no reconocida. Seleccione una opción entre 1 y 7.") # Mensaje de error
        print("----------------------------")
        sleep(2) # Espera 2 segundos antes de volver a pedir ingresar una operación