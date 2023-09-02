Algoritmo proyectoRecategorizMonotributo
	Escribir '**************************************'
	Escribir 'RECATEGORIZACI�N MONOTRIBUTO'
	Escribir 'Tablas actualizadas al 01/07/2023'
	Escribir '**************************************'
	
	// Es importante saber en qu� actividad se encuentra inscripto el usuario porque de acuerdo a ello se definir� 
	// un monto total de ingreso y un monto de monotributo por categor�a y actividad.
	Definir actividad Como Entero
	actividad <- 0// inicializo la variable
	Escribir 'Elija la Opci�n de su Actividad:' 
	Escribir '1 -(Servicio)'
	Escribir '2 -(Venta de bienes)'
	Leer actividad
	
	// Le pido el dato de: en qu� categor�a se encuentra para que al final se Imprima en la Informaci�n en qu� categor�a   
	// se encuentra y a cu�l debe cambiar (si corresponde) ahora.
	Definir categoria Como Cadena
	categoria <- ''
	Escribir '-----------------------------------------'
	Escribir 'Ingrese su categoria actual en mayusculas:'
	Leer categoria
	
	
	
	
	// **********************************************************************************
	// Estructura Segun para la opci�n del Mes y Estructura Para (as� da ingreso a la facturaci�n mensual).
	
	// Se busca que sea claro al usuario cuando tenga que dar ingreso a los datos de facturaci�n,
	// de esa manera podr� ingresar en forma correcta y precisa. 
	// Lo que hago es pedirle los datos del mes y del a�o
	// Luego genero una opci�n para que el mes 1 sea enero o 2 julio.
	// Seguido una estructura Para (se ingresa los 12 meses que se requiere de facturaci�n)
	
	Definir mes, anio Como Entero 
	mes <- 0
	anio <- 1
	Escribir '----------------------------------' 
	Escribir 'Ingrese la Opci�n del mes en que va a realizar la recategorizaci�n:' 
	Escribir '1 -(Enero)'
	Escribir '2 -(Julio)'
	Leer mes
	Escribir '----------------------------------'
	Escribir 'Ingrese el a�o en el que se encuentra actualmente:'
	Leer anio
	
	// la variable ingreso el usuario debe ingresar el monto de facturaci�n
	// La variable montoTotalIng me sirve en la Estructura Condicional que sigue para determinar
	// a qu� categor�a deber�a pasar o mantener.
	Definir ingreso, montoTotalIng Como Real
	ingreso <- 0
	montoTotalIng <- 0
	Escribir '----------------------------------' 
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
	
	
	//******************************************************************************************
	//Estructura Condicional Anidada para determinar Categor�a de Monotributo que le Corresponde
	//Traigo de la estructura Para anterior el montoTotalIng as� comparo con ingMaxCat.
	
	// En la variable categNueva voy a guardar el n�mero de opci�n para la Estructura Segun �ltima que imprime 
	// por pantalla la informaci�n al usuario. 
	Definir categNueva Como Entero
	categNueva <- 0
	// genero estas variables porque si la trageramos de una base de datos se cambiar�a el importe solamente
	// no se tendr�a que modificar la codificaci�n (se podr�a haber colocado directamente los importes pero ante 
	// variaciones de los montos por AFIP se tendr�a que modificar la codificaci�n)
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
	// Y tuviese que registrarse en r�gimen de Responsable inscripto, que le indique dicha situaci�n.
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
										Escribir 'Usted excedi� el R�gimen Simplificado de Monotributo'
										Escribir 'Debe registrarse como Responsable Inscripto'
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		// Funci�n SI para la venta de cosas muebles 		
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
													Escribir 'Usted excedi� el R�gimen Simplificado de Monotributo'
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
	//Estructura Segun para Imprimirle al Contribuyente la Informaci�n
	
	// con el mismo criterio que para el monto de ingreso m�ximo
	// genero estas variables porque si la trageramos de una base de datos se cambiar�a el importe solamente
	// no se tendr�a que modificarse la codificaci�n.
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
	// por ello se generan las opciones para las dem�s categor�as que 
	// difieren los montos (entre servicios y venta de Bienes). 
	Seg�n categNueva Hacer
01, 09:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categor�a ', categoria, ' y ahora est� en la categor�a: A. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente deber�a facturar como M�ximo: ', ingMaxCatA/12, ' $ para mantenerse en la categor�a A'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturaci�n Su pago Mensual de Impuesto a las Actividades Econ�micas sera de ', (ingMaxCatA/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo ser� de: ', montoMonotCatA, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatA/12)*0.03)+montoMonotCatA, ' $'
02, 10:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categor�a ', categoria, ' y ahora est� en la categor�a: B. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente deber�a facturar como M�ximo: ', ingMaxCatB/12, ' $ para mantenerse en la categor�a B'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturaci�n Su pago Mensual de Impuesto a las Actividades Econ�micas sera de ', (ingMaxCatB/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo ser� de: ', montoMonotCatB, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatB/12)*0.03)+montoMonotCatB, ' $'
03:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categor�a ', categoria, ' y ahora est� en la categor�a: C. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente deber�a facturar como M�ximo: ', ingMaxCatC/12, ' $ para mantenerse en la categor�a C'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturaci�n Su pago Mensual de Impuesto a las Actividades Econ�micas sera de ', (ingMaxCatC/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo ser� de: ', montoMonotCatCServ, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatC/12)*0.03)+montoMonotCatCServ, ' $'
11:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categor�a ', categoria, ' y ahora est� en la categor�a: C. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente deber�a facturar como M�ximo: ', ingMaxCatC/12, ' $ para mantenerse en la categor�a C'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturaci�n Su pago Mensual de Impuesto a las Actividades Econ�micas sera de ', (ingMaxCatC/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo ser� de: ', montoMonotCatCBienes, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatC/12)*0.03)+montoMonotCatCBienes, ' $'
04:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categor�a ', categoria, ' y ahora est� en la categor�a: D. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente deber�a facturar como M�ximo: ', ingMaxCatD/12, ' $ para mantenerse en la categor�a D'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturaci�n Su pago Mensual de Impuesto a las Actividades Econ�micas sera de ', (ingMaxCatD/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo ser� de: ', montoMonotCatDServ, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatD/12)*0.03)+montoMonotCatDServ, ' $'
12:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categor�a ', categoria, ' y ahora est� en la categor�a: D. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente deber�a facturar como M�ximo: ', ingMaxCatD/12, ' $ para mantenerse en la categor�a D'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturaci�n Su pago Mensual de Impuesto a las Actividades Econ�micas sera de ', (ingMaxCatD/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo ser� de: ', montoMonotCatDBienes, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatD/12)*0.03)+montoMonotCatDBienes, ' $'
05:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categor�a ', categoria, ' y ahora est� en la categor�a: E. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente deber�a facturar como M�ximo: ', ingMaxCatE/12, ' $ para mantenerse en la categor�a E'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturaci�n Su pago Mensual de Impuesto a las Actividades Econ�micas sera de ', (ingMaxCatE/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo ser� de: ', montoMonotCatEServ, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatE/12)*0.03)+montoMonotCatEServ, ' $'
13:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categor�a ', categoria, ' y ahora est� en la categor�a: E. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente deber�a facturar como M�ximo: ', ingMaxCatE/12, ' $ para mantenerse en la categor�a E'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturaci�n Su pago Mensual de Impuesto a las Actividades Econ�micas sera de ', (ingMaxCatE/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo ser� de: ', montoMonotCatEBienes, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatE/12)*0.03)+montoMonotCatEBienes, ' $'
06:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categor�a ', categoria, ' y ahora est� en la categor�a: F. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente deber�a facturar como M�ximo: ', ingMaxCatF/12, ' $ para mantenerse en la categor�a F'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturaci�n Su pago Mensual de Impuesto a las Actividades Econ�micas sera de ', (ingMaxCatF/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo ser� de: ', montoMonotCatFServ, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatF/12)*0.03)+montoMonotCatFServ, ' $'
14:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categor�a ', categoria, ' y ahora est� en la categor�a: F. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente deber�a facturar como M�ximo: ', ingMaxCatF/12, ' $ para mantenerse en la categor�a F'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturaci�n Su pago Mensual de Impuesto a las Actividades Econ�micas sera de ', (ingMaxCatF/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo ser� de: ', montoMonotCatFBienes, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatF/12)*0.03)+montoMonotCatFBienes, ' $'
07:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categor�a ', categoria, ' y ahora est� en la categor�a: G. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente deber�a facturar como M�ximo: ', ingMaxCatG/12, ' $ para mantenerse en la categor�a G'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturaci�n Su pago Mensual de Impuesto a las Actividades Econ�micas sera de ', (ingMaxCatG/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo ser� de: ', montoMonotCatGServ, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatG/12)*0.03)+montoMonotCatGServ, ' $'
15:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categor�a ', categoria, ' y ahora est� en la categor�a: G. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente deber�a facturar como M�ximo: ', ingMaxCatG/12, ' $ para mantenerse en la categor�a G'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturaci�n Su pago Mensual de Impuesto a las Actividades Econ�micas sera de ', (ingMaxCatG/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo ser� de: ', montoMonotCatGBienes, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatG/12)*0.03)+montoMonotCatGBienes, ' $'
08:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categor�a ', categoria, ' y ahora est� en la categor�a: H. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente deber�a facturar como M�ximo: ', ingMaxCatH/12, ' $ para mantenerse en la categor�a H'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturaci�n Su pago Mensual de Impuesto a las Actividades Econ�micas sera de ', (ingMaxCatH/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo ser� de: ', montoMonotCatHServ, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatH/12)*0.03)+montoMonotCatHServ, ' $'
16:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categor�a ', categoria, ' y ahora est� en la categor�a: H. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente deber�a facturar como M�ximo: ', ingMaxCatH/12, ' $ para mantenerse en la categor�a H'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturaci�n Su pago Mensual de Impuesto a las Actividades Econ�micas sera de ', (ingMaxCatH/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo ser� de: ', montoMonotCatHBienes, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatH/12)*0.03)+montoMonotCatHBienes, ' $'
17:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categor�a ', categoria, ' y ahora est� en la categor�a: I. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente deber�a facturar como M�ximo: ', ingMaxCatI/12, ' $ para mantenerse en la categor�a I'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturaci�n Su pago Mensual de Impuesto a las Actividades Econ�micas sera de ', (ingMaxCatI/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo ser� de: ', montoMonotCatI, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatI/12)*0.03)+montoMonotCatI, ' $'
18:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categor�a ', categoria, ' y ahora est� en la categor�a: J. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente deber�a facturar como M�ximo: ', ingMaxCatJ/12, ' $ para mantenerse en la categor�a J'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturaci�n Su pago Mensual de Impuesto a las Actividades Econ�micas sera de ', (ingMaxCatJ/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo ser� de: ', montoMonotCatJ, ' $.'
	Escribir '----------------------------------'
	Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatJ/12)*0.03)+montoMonotCatJ, ' $'
19:
	Escribir '----------------------------------'
	Escribir '1-Usted se encontraba en la categor�a ', categoria, ' y ahora est� en la categor�a: K. '
	Escribir '----------------------------------'
	Escribir '2-Mensualmente deber�a facturar como M�ximo: ', ingMaxCatK/12, ' $ para mantenerse en la categor�a K'
	Escribir '----------------------------------'
	Escribir '3-Por dicha facturaci�n Su pago Mensual de Impuesto a las Actividades Econ�micas sera de ', (ingMaxCatK/12)*0.03, ' $'
	Escribir '----------------------------------'
	Escribir '4-Su pago Mensual por Monotributo ser� de: ', montoMonotCatK, ' $.'
	Escribir '----------------------------------'
			Escribir 'Total a Pagar (Monotributo + Act. Economicas): ', ((ingMaxCatK/12)*0.03)+montoMonotCatK, ' $'
	FinSeg�n
FinAlgoritmo
