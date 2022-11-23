Funcion validaD1 <- validar(matriz,m)
	Definir validaD1 como logico
	Definir arregloValidar Como Logico
	Definir i,j Como Entero
	validaD1 = Verdadero
	
	para i = 0 Hasta m-1
		si matriz(0,0)<>matriz(i,i) Entonces	
			validaD1 = Falso
		FinSi
		
		si matriz(0,m-1)<>matriz(i,m-1-i) Entonces
			validaD1 = Falso
		FinSi
		
	FinPara
	
Fin Funcion

Algoritmo integrador
	
	Definir muestra, matriz Como cadena
	Definir tamMuestra,m Como Entero
	Definir validaD1,validaD2 Como Logico
	
	muestra = "ABAABBCBD"
	//muestra = "ABACACABA"
	tamMuestra = Longitud(muestra)
	
	si tamMuestra = 9 o tamMuestra = 16 o tamMuestra = 1369 Entonces
		
		m = raiz(tamMuestra)
		Dimension matriz[m,m]
		
		llenarMatriz(matriz, muestra, m)
		Escribir ""
		validaD1 = validar(matriz,m)
		
		imprimirMatriz(matriz,m)
		
		//Escribir validaD1
		
		Si validaD1 = Verdadero Entonces
			
			Escribir "SE A DETECTADO EL GEN Z"
			
		SiNo
			Escribir "NO DETECTÓ EL GEN Z"
			
		FinSi
		
	FinSi
	
FinAlgoritmo

SubProceso llenarMatriz(matriz Por Referencia, muestra, m)
	
	Definir i, j, cont Como Entero
	cont = 0
	
	Para i=0 Hasta m-1 Hacer
		
		Para j=0 hasta m-1 Hacer
			
			matriz[i,j] = Subcadena(muestra,cont,cont) 
			cont = cont + 1
			
		FinPara
	FinPara
	
FinSubProceso

SubProceso imprimirMatriz(matriz, m)
	
	Definir i,j Como Entero
	Escribir ""
	Para i=0 Hasta m-1 Con Paso 1 Hacer
		
		Para j=0 Hasta m-1 Con Paso 1 Hacer
			
			Escribir " ", matriz[i,j], " " Sin Saltar
			
		Fin Para
		
		Escribir " "
		
	Fin Para
	Escribir ""
FinSubProceso
	