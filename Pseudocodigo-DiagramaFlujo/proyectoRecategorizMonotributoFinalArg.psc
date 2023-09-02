Algoritmo proyectoRecategorizMonotributo
	Escribir '**************************************'
	Escribir 'RECATEGORIZACIÓN MONOTRIBUTO'
	Escribir 'Tablas actualizadas al 01/07/2023'
	Escribir '**************************************'
	
	// Es importante saber en qué actividad se encuentra inscripto el usuario porque de acuerdo a ello se definirá 
	// un monto total de ingreso y un monto de monotributo por categoría y actividad.
	Definir actividad Como Entero
	actividad <- 0// inicializo la variable
	Escribir 'Elija la Opción de su Actividad:' 
	Escribir '1 -(Servicio)'
	Escribir '2 -(Venta de bienes)'
	Leer actividad
	
	// Le pido el dato de: en qué categoría se encuentra para que al final se Imprima en la Información en qué categoría   
	// se encuentra y a cuál debe cambiar (si corresponde) ahora.
	Definir categoria Como Cadena
	categoria <- ''
	Escribir '-----------------------------------------'
	Escribir 'Ingrese su categoria actual en mayusculas:'
	Leer categoria
	
	
	
	
	// **********************************************************************************
	// Estructura Segun para la opción del Mes y Estructura Para (así da ingreso a la facturación mensual).
	
	// Se busca que sea claro al usuario cuando tenga que dar ingreso a los datos de facturación,
	// de esa manera podrá ingresar en forma correcta y precisa. 
	// Lo que hago es pedirle los datos del mes y del año
	// Luego genero una opción para que el mes 1 sea enero o 2 julio.
	// Seguido una estructura Para (se ingresa los 12 meses que se requiere de facturación)
	
	Definir mes, anio Como Entero 
	mes <- 0
	anio <- 1
	Escribir '----------------------------------' 
	Escribir 'Ingrese la Opción del mes en que va a realizar la recategorización:' 
	Escribir '1 -(Enero)'
	Escribir '2 -(Julio)'
	Leer mes
	Escribir '----------------------------------'
	Escribir 'Ingrese el año en el que se encuentra actualmente:'
	Leer anio
	
	// la variable ingreso el usuario debe ingresar el monto de facturación
	// La variable montoTotalIng me sirve en la Estructura Condicional que sigue para determinar
	// a qué categoría debería pasar o mantener.
	Definir ingreso, montoTotalIng Como Real
	ingreso <- 0
	montoTotalIng <- 0
	Escribir '----------------------------------' 
	Escribir 'Ingrese en forma correlativa su facturación mes a mes: '
	Según mes Hacer
1:
	Escribir 'El mes 1 corresponderá con enero de ', anio-1
	Para x<-1 Hasta 12 Hacer
		Escribir '----------------------------------'
		Escribir 'Mes ', x, ':'
		Leer ingreso
		montoTotalIng <- montoTotalIng+ingreso
	FinPara
	Escribir '----------------------------------'
	Escribir 'Monto de Facturación Total Ingresado por Usted: ', montoTotalIng, ' $'
2:
	Escribir 'El mes 1 corresponderá con Julio de ', anio-1
	Para x<-1 Hasta 12 Hacer
		Escribir '----------------------------------'
		Escribir 'Mes ', x, ':'
		Leer ingreso
		montoTotalIng <- montoTotalIng+ingreso
	FinPara
	Escribir '----------------------------------'
	Escribir 'Monto de Facturación Total Ingresado por Usted: ', montoTotalIng, ' $' 
	FinSegún
	
	
	//******************************************************************************************
	//Estructura Condicional Anidada para determinar Categoría de Monotributo que le Corresponde
	//Traigo de la estructura Para anterior el montoTotalIng así comparo con ingMaxCat.
	
	// En la variable categNueva voy a guardar el número de opción para la Estructura Segun última que imprime 
	// por pantalla la información al usuario. 
	Definir categNueva Como Entero
	categNueva <- 0
	// genero estas variables porque si la trageramos de una base de datos se cambiaría el importe solamente
	// no se tendría que modificar la codificación (se podría haber colocado directamente los importes pero ante 
	// variaciones de los montos por AFIP se tendría que modificar la codificación)
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
	
	// La Estructura condicional anidada contempla la posibilidad de un usuario que excediese el monto del monotributo 
	// Y tuviese que registrarse en régimen de Responsable inscripto, que le indique dicha situación.
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
	
	
	//****************************************************************************************
	//Estructura Segun para Imprimirle al Contribuyente la Información
	
	// con el mismo criterio que para el monto de ingreso máximo
	// genero estas variables porque si la trageramos de una base de datos se cambiaría el importe solamente
	// no se tendría que modificarse la codificación.
	Definir montoMonotCatA, montoMonotCatB, montoMonotCatCServ, montoMonotCatCBienes, montoMonotCatDServ Como Real
	Definir montoMonotCatDBienes, montoMonotCatEServ, montoMonotCatEBienes, montoMonotCatFServ, montoMonotCatFBienes Como Real
	Definir montoMonotCatGServ, montoMonotCatGBienes, montoMonotCatHServ, montoMonotCatHBienes, montoMonotCatI, montoMonotCatJ, montoMonotCatK Como Real
	montoMonotCatA <- 5750.75
	montoMonotCatB <- 6430.38
	montoMonotCatCServ <- 7351.10
	montoMonotCatCBienes <- 7226.83
	montoMonotCatDServ <- 9245.06
	montoMonotCatDBienes <- 9040.47
	montoMonotCatEServ <- 12776.61
	montoMonotCatEBienes <- 11629.37
	montoMonotCatFServ <- 15712.40
	montoMonotCatFBienes <- 13856.32
	montoMonotCatGServ <- 18347.44
	montoMonotCatGBienes <- 15855.59
	montoMonotCatHServ <- 31347.16
	montoMonotCatHBienes <- 26743.66
	montoMonotCatI <- 38464.47
	montoMonotCatJ <- 44390.28
	montoMonotCatK <- 50717.92
	// Las categorias A y B comparten los mismos montos (en cuanto a servicos y venta de bienes) 
	// por ello se generan las opciones para las demás categorías que 
	// difieren los montos (entre servicios y venta de Bienes). 
	Según categNueva Hacer
01, 09:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categoría ', categoria, ' y ahora está en la categoría: A. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente debería facturar como Máximo: ', ingMaxCatA/12, ' $ para mantenerse en la categoría A'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturación Su pago Mensual de Impuesto a las Actividades Económicas sera de ', (ingMaxCatA/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo será de: ', montoMonotCatA, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatA/12)*0.03)+montoMonotCatA, ' $'
02, 10:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categoría ', categoria, ' y ahora está en la categoría: B. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente debería facturar como Máximo: ', ingMaxCatB/12, ' $ para mantenerse en la categoría B'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturación Su pago Mensual de Impuesto a las Actividades Económicas sera de ', (ingMaxCatB/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo será de: ', montoMonotCatB, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatB/12)*0.03)+montoMonotCatB, ' $'
03:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categoría ', categoria, ' y ahora está en la categoría: C. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente debería facturar como Máximo: ', ingMaxCatC/12, ' $ para mantenerse en la categoría C'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturación Su pago Mensual de Impuesto a las Actividades Económicas sera de ', (ingMaxCatC/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo será de: ', montoMonotCatCServ, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatC/12)*0.03)+montoMonotCatCServ, ' $'
11:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categoría ', categoria, ' y ahora está en la categoría: C. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente debería facturar como Máximo: ', ingMaxCatC/12, ' $ para mantenerse en la categoría C'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturación Su pago Mensual de Impuesto a las Actividades Económicas sera de ', (ingMaxCatC/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo será de: ', montoMonotCatCBienes, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatC/12)*0.03)+montoMonotCatCBienes, ' $'
04:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categoría ', categoria, ' y ahora está en la categoría: D. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente debería facturar como Máximo: ', ingMaxCatD/12, ' $ para mantenerse en la categoría D'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturación Su pago Mensual de Impuesto a las Actividades Económicas sera de ', (ingMaxCatD/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo será de: ', montoMonotCatDServ, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatD/12)*0.03)+montoMonotCatDServ, ' $'
12:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categoría ', categoria, ' y ahora está en la categoría: D. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente debería facturar como Máximo: ', ingMaxCatD/12, ' $ para mantenerse en la categoría D'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturación Su pago Mensual de Impuesto a las Actividades Económicas sera de ', (ingMaxCatD/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo será de: ', montoMonotCatDBienes, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatD/12)*0.03)+montoMonotCatDBienes, ' $'
05:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categoría ', categoria, ' y ahora está en la categoría: E. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente debería facturar como Máximo: ', ingMaxCatE/12, ' $ para mantenerse en la categoría E'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturación Su pago Mensual de Impuesto a las Actividades Económicas sera de ', (ingMaxCatE/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo será de: ', montoMonotCatEServ, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatE/12)*0.03)+montoMonotCatEServ, ' $'
13:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categoría ', categoria, ' y ahora está en la categoría: E. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente debería facturar como Máximo: ', ingMaxCatE/12, ' $ para mantenerse en la categoría E'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturación Su pago Mensual de Impuesto a las Actividades Económicas sera de ', (ingMaxCatE/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo será de: ', montoMonotCatEBienes, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatE/12)*0.03)+montoMonotCatEBienes, ' $'
06:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categoría ', categoria, ' y ahora está en la categoría: F. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente debería facturar como Máximo: ', ingMaxCatF/12, ' $ para mantenerse en la categoría F'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturación Su pago Mensual de Impuesto a las Actividades Económicas sera de ', (ingMaxCatF/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo será de: ', montoMonotCatFServ, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatF/12)*0.03)+montoMonotCatFServ, ' $'
14:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categoría ', categoria, ' y ahora está en la categoría: F. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente debería facturar como Máximo: ', ingMaxCatF/12, ' $ para mantenerse en la categoría F'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturación Su pago Mensual de Impuesto a las Actividades Económicas sera de ', (ingMaxCatF/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo será de: ', montoMonotCatFBienes, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatF/12)*0.03)+montoMonotCatFBienes, ' $'
07:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categoría ', categoria, ' y ahora está en la categoría: G. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente debería facturar como Máximo: ', ingMaxCatG/12, ' $ para mantenerse en la categoría G'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturación Su pago Mensual de Impuesto a las Actividades Económicas sera de ', (ingMaxCatG/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo será de: ', montoMonotCatGServ, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatG/12)*0.03)+montoMonotCatGServ, ' $'
15:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categoría ', categoria, ' y ahora está en la categoría: G. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente debería facturar como Máximo: ', ingMaxCatG/12, ' $ para mantenerse en la categoría G'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturación Su pago Mensual de Impuesto a las Actividades Económicas sera de ', (ingMaxCatG/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo será de: ', montoMonotCatGBienes, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatG/12)*0.03)+montoMonotCatGBienes, ' $'
08:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categoría ', categoria, ' y ahora está en la categoría: H. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente debería facturar como Máximo: ', ingMaxCatH/12, ' $ para mantenerse en la categoría H'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturación Su pago Mensual de Impuesto a las Actividades Económicas sera de ', (ingMaxCatH/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo será de: ', montoMonotCatHServ, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatH/12)*0.03)+montoMonotCatHServ, ' $'
16:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categoría ', categoria, ' y ahora está en la categoría: H. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente debería facturar como Máximo: ', ingMaxCatH/12, ' $ para mantenerse en la categoría H'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturación Su pago Mensual de Impuesto a las Actividades Económicas sera de ', (ingMaxCatH/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo será de: ', montoMonotCatHBienes, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatH/12)*0.03)+montoMonotCatHBienes, ' $'
17:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categoría ', categoria, ' y ahora está en la categoría: I. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente debería facturar como Máximo: ', ingMaxCatI/12, ' $ para mantenerse en la categoría I'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturación Su pago Mensual de Impuesto a las Actividades Económicas sera de ', (ingMaxCatI/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo será de: ', montoMonotCatI, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatI/12)*0.03)+montoMonotCatI, ' $'
18:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categoría ', categoria, ' y ahora está en la categoría: J. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente debería facturar como Máximo: ', ingMaxCatJ/12, ' $ para mantenerse en la categoría J'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturación Su pago Mensual de Impuesto a las Actividades Económicas sera de ', (ingMaxCatJ/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo será de: ', montoMonotCatJ, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatJ/12)*0.03)+montoMonotCatJ, ' $'
19:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categoría ', categoria, ' y ahora está en la categoría: K. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente debería facturar como Máximo: ', ingMaxCatK/12, ' $ para mantenerse en la categoría K'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturación Su pago Mensual de Impuesto a las Actividades Económicas sera de ', (ingMaxCatK/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo será de: ', montoMonotCatK, ' $.'
	Escribir '----------------------------------'
			Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatK/12)*0.03)+montoMonotCatK, ' $'
	FinSegún
FinAlgoritmo
