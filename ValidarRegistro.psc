Algoritmo ValidarRegistro
	Definir edad Como Entero
	Definir respuesta Como Caracter
	Escribir "¿Cuántos años tienes?"
	Leer edad
	Escribir "¿Aceptas los términos y condiciones? (S/N)"
	Leer respuesta
	respuesta <- Mayusculas(respuesta)
	Si edad >= 14 y respuesta = "S" Entonces
		Escribir "Registro exitoso."
	SiNo
		Escribir "No puedes registrarte."
	FinSi
FinAlgoritmo
