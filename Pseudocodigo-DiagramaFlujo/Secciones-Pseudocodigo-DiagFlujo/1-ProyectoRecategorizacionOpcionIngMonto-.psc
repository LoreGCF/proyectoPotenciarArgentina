Algoritmo opcionParaIngMonto
	// Para que sea m�s claro al usuario a la hora de dar ingreso a los datos de facturaci�n.
	// Lo que hago es pedirle los datos del mes y del a�o
	// Luego genero una opci�n para que el mes 1 sea enero o julio y sea claro para ellos.
	Definir mes Como Entero
	Definir anio Como Entero
	mes <- 0
	anio <- 1
	Escribir '----------------------------------' // inicializo las variables
	Escribir 'Ingrese la Opci�n del mes en que va a realizar la recategorizaci�n:' // inicializo las variables
	Escribir '1 -(Enero)'
	Escribir '2 -(Julio)'
	Leer mes
	Escribir '----------------------------------'
	Escribir 'Ingrese el a�o en el que se encuentra actualmente:'
	Leer anio
	Definir ingreso, montoTotalIng Como Real
	ingreso <- 0
	montoTotalIng <- 0
	// Hago la opci�n del mes 1 Enero o 2 Julio para que sea claro el enunciado para el usuario
	// cuando tenga que ingresar los montos correctos
	Escribir '----------------------------------' // inicializo valiables
	Escribir 'Ingrese en forma correlativa su facturaci�n mes a mes: '
	Seg�n mes Hacer
		1:
			Escribir 'El mes 1 corresponder� con enero de ', anio-1
			Para x<-1 Hasta 12 Hacer
				Escribir '----------------------------------'
				Escribir 'Mes ', x, ':'
				Leer ingreso
				montoTotalIng <- montoTotalIng+ingreso
			FinPara
			Escribir '----------------------------------'
			Escribir 'Monto de Facturaci�n Total Ingresado por Usted: ', montoTotalIng, ' $'
		2:
			Escribir 'El mes 1 corresponder� con Julio de ', anio-1
			Para x<-1 Hasta 12 Hacer
				Escribir '----------------------------------'
				Escribir 'Mes ', x, ':'
				Leer ingreso
				montoTotalIng <- montoTotalIng+ingreso
			FinPara
			Escribir '----------------------------------'
			Escribir 'Monto de Facturaci�n Total Ingresado por Usted: ', montoTotalIng, ' $'
	FinSeg�n
FinAlgoritmo
