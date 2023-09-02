Algoritmo imprimCategMonto
	// con el mismo criterio que para el monto de ingreso m�ximo
	// genero estas variables porque si la trageramos de una base de datos se cambiar�a el importe solamente
	// no se tendr�a que modificarse la codificaci�n.
	// cargando los datos desde una base se modificar�a y actualizar�an montos, sin tocar codificaci�n. 
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
