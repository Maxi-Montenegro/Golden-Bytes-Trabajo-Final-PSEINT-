//Uaremos este archivo para nuestro trabajo





Proceso BatallaNavalMain
	mostrarTableroJugador();
	
FinProceso

SubAlgoritmo mostrarTableroJugador
	Definir matrizJugador, i,j, filaNumeros Como Entero;
	Definir columnaLetras Como cadena;
	Dimension matrizJugador[11,11], filaNumeros[10];
	columnaLetras <- " ABCDEFGHIJ";
	
	// Lleno fila 0 con numeros del 1 al 10
	para i <- 0 Hasta 9 Con Paso 1 Hacer
		filaNumeros[i] <- i + 1 ;
	FinPara


	
	// Lleno matriz del con 0
	para i <- 0 Hasta 10 Con Paso 1 Hacer
		para j <- 0 Hasta 10 Con Paso 1 Hacer
			matrizJugador[i,j] <- 0;
		FinPara
		
	FinPara
	

	
	//Muestro matrizJugador etaria bueno este mas centrada
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
				Escribir Sin Saltar "[", " ", "]"; // aca hago un mas 1 al j para salterme la columna 0
				Escribir Sin Saltar "    ";
			FinSi
			
		FinPara
		Escribir "";
		
	FinPara
	
	//esto de aca es un check necesitaba saber que quedo alineada
	//Leer fila ; // loop check que sea string
	

FinSubAlgoritmo
	