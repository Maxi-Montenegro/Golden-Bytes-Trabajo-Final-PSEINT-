Proceso sin_titulo
	
	//ESTAS VARIABLES  O AL MENOS LAS MATRIZ JUGADOR Y ENEMIGO VAN A TENER QUE SER PASAR POR REFERENCIA a los otrso sub algoritomos
	Definir matrizJugador Como Entero;
	Dimension matrizJugador[11,11];
	Definir nombre_jugador Como Caracter;
	Definir matrizEnemigo Como Entero;
	Dimension matrizEnemigo[11,11];
	
	mostrarTableroJugadorEnemigo(matrizJugador, matrizEnemigo);
	
	
FinProceso

SubAlgoritmo mostrarTableroJugadorEnemigo(matrizJugador Por Referencia, matrizEnemigo Por Referencia)
	Definir i,j, filaNumeros Como Entero;
	Definir columnaLetras Como cadena;
	columnaLetras <- " ABCDEFGHIJ";
	Dimension filaNumeros[10];
	Definir tecla Como Caracter;
	
	para i <- 0 Hasta 9 Con Paso 1 Hacer
		filaNumeros[i] <- i + 1 ;
		
	FinPara 
	
	Escribir "Este es su tablero                                                                        Este es el tablero del enemigo"; 
	// Lleno matriz enemigo con del con 0 REMOB
	para i <- 0 Hasta 10 Con Paso 1 Hacer
		para j <- 0 Hasta 10 Con Paso 1 Hacer
			Escribir Sin Saltar "    "; //centrado de la matriz margen superior
			matrizJugador[i,j] <- 0 ;
			matrizEnemigo[i,j] <- Aleatorio(-1,2) ; //REMOVER ESTO PARA  LOS OTROS SUBALGORITOMOS
		FinPara
		
	FinPara

	para i <- 0 Hasta 10 Con Paso 1 Hacer
		Escribir ""; 
		mostrarValor(matrizJugador, columnaLetras, filaNumeros, i);	//llamo a la funcion para mostrar una matriz
		mostrarValor(matrizEnemigo, columnaLetras, filaNumeros, i);	
		Escribir "";
	FinPara
	
	Escribir "";
	Escribir "                                                                           Presione Enter para continuar...";
	leer tecla;
FinSubAlgoritmo

SubAlgoritmo mostrarValor(matriz Por Referencia, columnaLetras Por Referencia, filaNumeros Por Referencia, i Por Valor)
	Definir j Como Entero;

	Escribir Sin Saltar "             "; // aqui centr? la matriz margen de izquierda a derecha
	Escribir Sin Saltar Subcadena(columnaLetras, i, i);
	Escribir Sin Saltar "     ";// separacion de la matris de las primera columna	
		
	para j<-0 Hasta 9 Con Paso 1 Hacer
		si i == 0 Entonces// si true muestro los numeros
			Escribir Sin Saltar filaNumeros[j];
			Escribir Sin Saltar "     "; // separacion entre los numeros
		sino 
			//Aqui imprimimos matriz 
			si matriz[i,j+1] == -1 Entonces 
				Escribir Sin Saltar "~"; // 
				Escribir Sin Saltar "     ";
			FinSi
			si matriz[i,j+1] == 0 Entonces 
				Escribir Sin Saltar "~"; // 
				Escribir Sin Saltar "     "; // separacion del simbolo agua
			FinSi
			si matriz[i,j+1] == 1 Entonces 
				
				Escribir Sin Saltar "¶"; // 
				Escribir Sin Saltar "     ";
			FinSi
			si matriz[i,j+1] == 2 Entonces 
				Escribir Sin Saltar "*"; // 
				Escribir Sin Saltar "     ";
			FinSi
		FinSi
	FinPara
	
FinSubAlgoritmo	