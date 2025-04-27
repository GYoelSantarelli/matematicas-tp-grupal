n1 = int(input("Ingrese un numero entero: "))
n2 = int(input("Ingrese otro numero entero: "))
suma = 0
for i  in range(n1, n2+1):
    suma += i
print(f"La suma de los numeros entre {n1} y {n2} es: {suma}")