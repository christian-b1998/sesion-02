Algoritmo Bisiesto
	Definir ano Como Entero
	Escribir "Escriba el año para determinar si es bisiesto o no: "
	Leer ano
	Si (ano mod 4 = 0 y ano mod 100 <> 0) o ano mod 400 = 0 Entonces
		Escribir ano, " es un año bisiesto."
	SiNo
		Escribir ano, " no es un año bisiesto."
	FinSi
FinAlgoritmo
