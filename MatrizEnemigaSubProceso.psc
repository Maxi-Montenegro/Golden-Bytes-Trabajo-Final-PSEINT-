Proceso BatallaNavalMain
mostrarTableroEnemigo();
FinProceso

// En este subproceso se ha creado una matriz que sera el tablero del juego

SubAlgoritmo mostrarTableroEnemigo
	
	Definir matrizEnemigo, i,j, filaNumeros Como Entero;
	Definir columnaLetras Como cadena;
	Dimension matrizEnemigo[11,11], filaNumeros[10];
	columnaLetras <- " ABCDEFGHIJ";
	
	// Lleno fila 0 con numeros del 1 al 10
	para i <- 0 Hasta 9 Con Paso 1 Hacer
		filaNumeros[i] <- i + 1 ;
	FinPara
	
	
	
	// Lleno matriz del con 0
	para i <- 0 Hasta 10 Con Paso 1 Hacer
		para j <- 0 Hasta 10 Con Paso 1 Hacer
			matrizEnemigo[i,j] <- 0;
		FinPara
		
	FinPara
	
	
	
	//Muestro matrizEnemigo 
	para i <- 0 Hasta 10 Con Paso 1 Hacer
		Escribir "";
		Escribir Sin Saltar "   ";
		para j <- 0 Hasta 9 Con Paso 1 Hacer
			si j == 0 Entonces // si true se muestra las letras
				Escribir Sin Saltar Subcadena(columnaLetras, i, i);
				Escribir Sin Saltar "    ";
			FinSi
			si i == 0 Entonces// si true muestro los numeros
				Escribir Sin Saltar filaNumeros[j];
				Escribir Sin Saltar "      ";
			sino 
				Escribir Sin Saltar "[",matrizEnemigo[i,j] , "]"; // aca hago un mas 1 al j para salterme la columna 0
				Escribir Sin Saltar "    ";
			FinSi
			
		FinPara
		Escribir "";
		
	FinPara
	
	
	
	//esto de aca es un check necesitaba saber que quedo alineada
	//Leer fila ; // loop check que sea string
	
	//-----------------------------------------------------------------------------------------------------------------------------
	Definir cx,x1 Como Entero;
	Definir cy ,y1 Como Entero;
	Definir destruir Como Entero;
	Definir balas Como Entero;
	Definir M,M2 Como Entero ;
	
	
	Dimension M2[11,11];
	
	balas <- 0;
	destruir <- 0 ;
	
	Para i<- 0 hasta 9 Hacer
		para j<-0 hasta 9 Hacer
			M2[i,j] <- 0;
		FinPara
	FinPara
	
	
	
	Para i<-1 Hasta 9 Hacer
		x1 <-azar(9);
		y1<- azar(9);
		si M2[x1,y1] = 0 Entonces
			M2[x1,y1] <- 2;
		FinSi
	FinPara
	
	Escribir "Ingrese numeros de disparo";
	Leer balas;
	
	Repetir
		Escribir "Ingrese coordenada x del disparo(entre 0 al 9)";
		Leer cx;
		Escribir "Ingrese coordenada y del disparo(entre 0 al 9)";
		Leer cy;
		
		balas<- balas-1;
		// Cuando da a u nbarco marca 1 y cuando cae al agua marca 2 
		Si M2[cx,cy]=2 Entonces
			Escribir "HA DADO EN EL BARCO";
			matrizEnemigo[cx,cy] <- 1;
			destruir<- destruir + 1;
		SiNo
			Escribir "                              --Disparo Al Mar--";
			matrizEnemigo[cx,cy] <- 2;
		FinSi
		Escribir "";
		para i <- 0 Hasta 10 Con Paso 1 Hacer
			Escribir "";
			Escribir Sin Saltar "   ";
			para j <- 0 Hasta 9 Con Paso 1 Hacer
				si j == 0 Entonces // si true se muestra las letras
					Escribir Sin Saltar Subcadena(columnaLetras, i, i);
					Escribir Sin Saltar "    ";
				FinSi
				si i == 0 Entonces// si true muestro los numeros
					Escribir Sin Saltar filaNumeros[j];
					Escribir Sin Saltar "      ";
				sino 
					Escribir Sin Saltar "[",matrizEnemigo[i,j] , "]"; // aca hago un mas 1 al j para salterme la columna 0
					Escribir Sin Saltar "    ";
				FinSi
				
			FinPara
			Escribir "";
			
		FinPara
		Escribir "";
		Escribir "------------------------------------------------------------------------------------------------------------------";
		Escribir "Le quedan ",balas," disparos";
		Escribir "Barcos destruidos :", destruir;
	Hasta Que destruir = 3 o balas = 0
	
	Si destruir < 3 y balas =0 Entonces
		Escribir "PERDIO";
	SiNo
		Escribir "***FELICITACIONES DESTROSO TODOS LOS BARCOS***";
	FinSi
FinSubAlgoritmo
	