Algoritmo funcSiRecategorizacion
	// En la variable categoria nueva voy a guardar el número de opción para luego imprimirle 
	// por pantalla al usuario su categoría, montos, etc. 
	Definir categNueva Como Entero
	categNueva <- 0
	// genero estas variables porque si la trageramos de una base de datos se cambiaría el importe solamente
	// no se tendría que modificar la codificación.
	// cargando los datos desde una base se modificaría y actualizarían montos, sin tocar codificación.  
	Definir ingMaxCatA, ingMaxCatB, ingMaxCatC, ingMaxCatD, ingMaxCatE, ingMaxCatF, ingMaxCatG, ingMaxCatH, ingMaxCatI, ingMaxCatJ, ingMaxCatK Como Real // inicializo variable
	ingMaxCatA <- 1414762.58
	ingMaxCatB <- 2103025.45
	ingMaxCatC <- 2944235.60
	ingMaxCatD <- 3656604.33
	ingMaxCatE <- 4305799.15
	ingMaxCatF <- 5382248.94
	ingMaxCatG <- 6458698.71
	ingMaxCatH <- 7996484.12
	ingMaxCatI <- 8949911.06
	ingMaxCatJ <- 10257028.68
	ingMaxCatK <- 11379612.01
	// La función si para la actividad contiene un sino por las dudas entre mál la actividad
	// número 1 para servicios y número 2 para venta de bienes.
	// si ingresa otro número le indica que ingresó mal el número. 
	// Esta función si también contiene un sino para el caso que excediese el monto del monotributo 
	// Y tuviese que registrarse en régimen de Responsable inscripto.
	Si actividad=1 Entonces
		Si montoTotalIng<=ingMaxCatA Entonces
			categNueva <- 01
		SiNo
			Si montoTotalIng<=ingMaxCatB Entonces
				categNueva <- 02
			SiNo
				Si montoTotalIng<=ingMaxCatC Entonces
					categNueva <- 03
				SiNo
					Si montoTotalIng<=ingMaxCatD Entonces
						categNueva <- 04
					SiNo
						Si montoTotalIng<=ingMaxCatE Entonces
							categNueva <- 05
						SiNo
							Si montoTotalIng<=ingMaxCatF Entonces
								categNueva <- 06
							SiNo
								Si montoTotalIng<=ingMaxCatG Entonces
									categNueva <- 07
								SiNo
									Si montoTotalIng<=ingMaxCatH Entonces
										categNueva <- 08
									SiNo
										Escribir 'Usted excedió el Régimen Simplificado de Monotributo'
										Escribir 'Debe registrarse como Responsable Inscripto'
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		// Función SI para la venta de cosas muebles 		
	SiNo
		Si montoTotalIng<=ingMaxCatA Entonces
			categNueva <- 09
		SiNo
			Si montoTotalIng<=ingMaxCatB Entonces
				categNueva <- 10
			SiNo
				Si montoTotalIng<=ingMaxCatC Entonces
					categNueva <- 11
				SiNo
					Si montoTotalIng<=ingMaxCatD Entonces
						categNueva <- 12
					SiNo
						Si montoTotalIng<=ingMaxCatE Entonces
							categNueva <- 13
						SiNo
							Si montoTotalIng<=ingMaxCatF Entonces
								categNueva <- 14
							SiNo
								Si montoTotalIng<=ingMaxCatG Entonces
									categNueva <- 15
								SiNo
									Si montoTotalIng<=ingMaxCatH Entonces
										categNueva <- 16
									SiNo
										Si montoTotalIng<=ingMaxCatI Entonces
											categNueva <- 17
										SiNo
											Si montoTotalIng<=ingMaxCatJ Entonces
												categNueva <- 18
											SiNo
												Si montoTotalIng<=ingMaxCatK Entonces
													categNueva <- 19
												SiNo
													Escribir 'Usted excedió el Régimen Simplificado de Monotributo'
													Escribir 'Debe registrarse como Responsable Inscripto'
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
