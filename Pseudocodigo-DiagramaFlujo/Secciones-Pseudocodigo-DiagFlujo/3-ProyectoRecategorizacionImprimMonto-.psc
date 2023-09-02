Algoritmo imprimCategMonto
	// con el mismo criterio que para el monto de ingreso máximo
	// genero estas variables porque si la trageramos de una base de datos se cambiaría el importe solamente
	// no se tendría que modificarse la codificación.
	// cargando los datos desde una base se modificaría y actualizarían montos, sin tocar codificación. 
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
