Algoritmo Parqueadero
	Definir horaCarro, horaMoto, cobroMaximo, horas, cobro Como Real
	Definir minutos Como Entero
	Definir factura, tipoVehiculo Como Caracter
	
	horaCarro <- 4000
	horaMoto <- 2000
	cobroMaximo <- 30000
	
	Escribir "Escriba el tipo de vehículo que ingresó al parqueadero:"
	Leer tipoVehiculo
	tipoVehiculo <- Minusculas(tipoVehiculo)
	
	Si tipoVehiculo = "carro" O tipoVehiculo = "moto" Entonces
		Escribir "Escriba el número de minutos que estuvo el vehículo:"
		Leer minutos
		
		Si minutos >= 0 Entonces
			Si minutos <= 15 Entonces
				cobro <- 0
			SiNo
				horas <- trunc(minutos / 60)
				
				Si minutos MOD 60 > 0 Entonces
					horas <- horas + 1
				FinSi
				
				Si tipoVehiculo = "carro" Entonces
					cobro <- horas * horaCarro
				SiNo
					cobro <- horas * horaMoto
				FinSi
				
				Si cobro > cobroMaximo Entonces
					cobro <- cobroMaximo
				FinSi
			FinSi
			
			Escribir "¿Cuenta con factura? (S/N):"
			Leer factura
			factura <- Mayusculas(factura)
			
			Si factura = "S" O factura = "N" Entonces
				Si factura = "S" Entonces
					cobro <- cobro / 2
				FinSi
				Escribir "Tipo de vehículo: ", tipoVehiculo
				Escribir "Total a pagar: $", cobro
			SiNo
				Escribir "Error: No se ingresó una respuesta válida."
			FinSi
		SiNo
			Escribir "Error: Se ingresó un número inválido de minutos."
		FinSi
	SiNo
		Escribir "Error: El tipo de vehículo ingresado es inválido."
	FinSi
FinAlgoritmo