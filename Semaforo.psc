Algoritmo Semaforo
	Definir unidades Como Entero
	Escribir "Digite el número de unidades disponibles: "
	Leer unidades
	Si unidades < 0 Entonces
		Escribir "Error: No se pueden tener unidades negativas."
	SiNo
		Si unidades = 0 Entonces
			Escribir "Rojo: Agotado."
		SiNo
			Si unidades > 0 y unidades <= 10 Entonces
				Escribir "Amarillo: Pedir."
			SiNo
				Escribir "Verde: Todo bien."
			FinSi
		FinSi
	FinSi
FinAlgoritmo
