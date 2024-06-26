//Usaremos este archivo para nuestro trabajo



Proceso BatallaNavalMain
	
	Definir nombre_jugador Como Caracter;
	Definir encontrado Como Logico;
	Definir dato Como Caracter;
	Definir datonumerico, i Como Entero;
	Definir opcionNumeros como cadena;
	opcionNumeros <- "1234";
	datonumerico <- 0 ;
	mensajeAmpliarPantalla();
	Borrar Pantalla;
	//textoEstatico();
	//Borrar Pantalla;
	//	Animacion();
	//	Borrar Pantalla;
	MensajeBienvenida(Nombre_Jugador);
	Borrar Pantalla;
	
	
	Repetir
		Escribir "Hola soldado ", nombre_jugador, ". Este es el Menu del juego.";
		escribir "";
		Escribir "1- Jugar"; // aqui se redirige al subalgoritmo "mostrarTableroJugador(matrizJugador Por Referencia)"
		Escribir "2- Reglas del juego";
		Escribir "3- Creditos";// aqui se redirige al subalgoritmo "creditos" 
		Escribir "4- Salir";
		Escribir sin saltar "Digite la opcion de menu:";
		Leer dato;
		encontrado <- falso;
		datonumerico <- 0;
		i<-0;
		
		// Busqueda secuencial
		mientras (i<4 y encontrado = Falso ) Hacer
			Si (Subcadena(opcionNumeros,i,i) == dato) Entonces
				encontrado <- Verdadero;
				datonumerico <- ConvertirANumero(dato);
				Escribir datonumerico;
			FinSi
			i <- i +1;
		FinMientras
//		Escribir "Se equivocó de opcion de menu.";
//		escribir "";
		Borrar Pantalla;
		
		Segun datonumerico Hacer
			1:
				batallaNavalLoop(nombre_jugador);
			2:
				ReglasDelJuego();
			3:
				Creditos();
			4:
				finDelJuego(nombre_jugador);
			De Otro Modo:
				Escribir "Se equivocó de opcion de menu.";
		FinSegun
	Hasta Que datonumerico == 4
	
	
	
FinProceso

SubAlgoritmo mensajeAmpliarPantalla
	
	Definir tecla Como Caracter;
	Escribir "                    PARA UNA MEJOR EXPERIENCIA DE JUEGO";
	Escribir "                 ABRA A PANTALLA COMPLETA Y PRESIONE ENTER";
	Leer TECLA;
	Borrar Pantalla;
	
FinSubAlgoritmo

// En este SubProceso mostramos la portada de presentacion
SubAlgoritmo  textoEstatico
	
    definir tecla Como Caracter;
	// Esta seria la pantalla inicial a modo de caratula 
	
	
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "                                                                            Universidad Tecnologica Nacional";
	Escribir "";
	Escribir "                                                                              Facultad Regional San Rafael";
	Escribir "";
	Escribir "";
	Escribir "                                                                                  Proyecto Integrador";
	Escribir "";
	Escribir "                                                                                  T.U.P COHORTE 2024"; 
	
	Escribir "";
	Escribir "";
	Escribir "";
	
	Escribir "                                                     ............................................................................. ";
    Escribir "                                                     ............................................................................. ";
    Escribir "                                                     ............................................................................. ";
    Escribir "                                                     ... GOLDEN       ****  ****  ****    **    ****  *    *  *****      *     ... ";
    Escribir "                                                     ...      BYTES   *  *  *  *  *      *   *  *     * *  *    *       * *    ... ";
    Escribir "                                                     ...              ****  ****  ***      \    ***   *  * *    *      *   *   ... ";
    Escribir "                                                     ...              *     * *   *     *   *   *     *    *    *     *******  ... ";
    Escribir "                                                     ...              *     *  *  ****    **    ****  *    *    *    *       * ... ";
    Escribir "                                                     ............................................................................. ";
    Escribir "                                                     ............................................................................. ";
    Escribir "                                                     ............................................................................. ";
	Escribir "";
	Escribir "";
    Escribir "                                                                       Presione Enter para continuar...";
    Leer tecla;
		
FinSubAlgoritmo

// Este subproceso es una animacion que muestra el nombre de nuestro juego
SubProceso Animacion
	
	Definir logo Como caracter;
	Definir i,j Como Entero;
	Definir tecla Como Caracter;
	
	Dimension logo[24];	// Definimos un arreglo que contenga los caracteres que formaran la animacion
	
	// cargamos manualmente el arreglo para lograr el efecto deseado
	
	logo[1] <- "      8 888888888o           .8.    8888888 8888888888    .8.          8 8888         8 8888                  .8.";          
	logo[2] <- "      8 8888    `88.        .888.         8 8888         .888.         8 8888         8 8888                 .888.";         
	logo[3] <- "      8 8888     `88       :88888.        8 8888        :88888.        8 8888         8 8888                :88888.";        
	logo[4] <- "      8 8888     ,88      . `88888.       8 8888       . `88888.       8 8888         8 8888               . `88888.";       
	logo[5] <- "      8 8888.   ,88?     .8. `88888.      8 8888      .8. `88888.      8 8888         8 8888              .8. `88888.";      
	logo[6] <- "      8 8888888888      .8`8. `88888.     8 8888     .8`8. `88888.     8 8888         8 8888             .8`8. `88888.";     
	logo[7] <- "      8 8888    `88.   .8? `8. `88888.    8 8888    .8? `8. `88888.    8 8888         8 8888            .8? `8. `88888.";    
	logo[8] <- "      8 8888      88  .8?   `8. `88888.   8 8888   .8?   `8. `88888.   8 8888         8 8888           .8?   `8. `88888.";   
	logo[9] <- "      8 8888    ,88? .888888888. `88888.  8 8888  .888888888. `88888.  8 8888         8 8888          .888888888. `88888.";  
	logo[10]<- "      8 888888888P  .8?       `8. `88888. 8 8888. 8?       `8. `88888. 8 888888888888 8 888888888888 .8?       `8. `88888.";
	logo[11]<- "                                    ";
	logo[12]<- "                                    ";
	logo[13]<- "                                    ";
	logo[14]<- "                                                                    b.             8            .8.   `8.`888b           ,8?   .8.            8 8888";
	logo[15]<- "                                                                    888o.          8           .888.   `8.`888b         ,8?   .888.           8 8888";
	logo[16]<- "                                                                    Y88888o.       8          :88888.   `8.`888b       ,8?   :88888.          8 8888";
	logo[17]<- "                                                                    .`Y888888o.    8         . `88888.   `8.`888b     ,8?   . `88888.         8 8888";
	logo[18]<- "                                                                    8o. `Y888888o. 8        .8. `88888.   `8.`888b   ,8?   .8. `88888.        8 8888";
	logo[19]<- "                                                                    8`Y8o. `Y88888o8       .8`8. `88888.   `8.`888b ,8?   .8`8. `88888.       8 8888";         
	logo[20]<- "                                                                    8   `Y8o. `Y8888      .8? `8. `88888.   `8.`888b8?   .8? `8. `88888.      8 8888";
	logo[21]<- "                                                                    8      `Y8o. `Y8     .8?   `8. `88888.   `8.`888?   .8?   `8. `88888.     8 8888";
	logo[22]<- "                                                                    8         `Y8o.`    .888888888. `88888.   `8.`8?   .888888888. `88888.    8 8888";
	logo[23]<- "                                                                    8            `Yo   .8?       `8. `88888.   `8.`   .8?       `8. `88888.   8 888888888888";
	
	// Para hacer aparecer el logo gradualmente recorremos el arreglo y le damos un tiempo de 150 milisegundos
	// de duracion
	Para i <- 1 Hasta 23 Hacer
		Escribir "";
		Borrar Pantalla;
		para j <- 1 hasta i Hacer
			Si j <= Longitud(logo[j]) Entonces
				Escribir logo[j];
			FinSi
		FinPara
		Esperar 150 Milisegundos;
	FinPara
	
	
	
	// Para hacer desaparecer el logo gradualmente recorremos el arreglo de manera inversa dandole el valor de -1 al paso 
	Para i <- 23 Hasta 1 Con Paso -1 Hacer
		Borrar Pantalla;
		Escribir ""; 
		para j <- 1 hasta i Hacer
			Si j <= Longitud(logo[j]) Entonces
				Escribir logo[j];
			FinSi
		FinPara
		Esperar 200 Milisegundos;
	FinPara
	Para i <- 1 Hasta 23 Hacer
		Escribir logo[i];
	FinPara
	
	// escribimos un mensaje para mejorar la experiencia del jugador
	
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "                                                                                ***EL JUEGO COMIENZA***";
	
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "                                                                              Presiona Enter para continuar...";
	Leer tecla;
	
	
FinSubProceso

// Aqui Damos un Mensaje de Bienvenida al Jugador 

SubProceso MensajeBienvenida (nombre_jugador Por Referencia)
	Definir confirmacion Como Caracter; //variable para Si o No
	Definir min_longitud como entero; //longitud minima del nombre
	min_longitud <- 3; //Longitud minima para el nombre
	Definir tecla Como Caracter;
	
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "                                                                              ¡¡¡ Bienvenido Soldado !!!";
	Escribir "";
	Escribir "                                                                   Estas Listo y preparado para esta Gran Aventura";
	Escribir "";
	Escribir "                                                                                 Presentate Soldado ";
	Escribir "";
	Repetir
		
		Escribir "                                                                       Escribe Tu Nombre (mínimo ", min_longitud, " caracteres):";
		leer nombre_jugador ;
		Si longitud(nombre_jugador) < min_longitud Entonces
			Escribir "El nombre debe tener al menos ", min_longitud, " caracteres. Inténtalo de nuevo.";
		Sino
			// Confirmar el nombre ingresado
			Escribir "¿Es correcto el nombre ", nombre_jugador, "? (S/N):";
			Leer confirmacion;	
			// Convertir la confirmación a mayúscula para simplificar la comparación
			confirmacion <- Mayusculas(confirmacion);
		FinSi
    Hasta Que longitud(nombre_jugador) >= min_longitud Y confirmacion = "S"
    Escribir "Nombre confirmado: ",nombre_jugador;
	Escribir "";
	Escribir "                                                             Perfecto soldado"," ", nombre_jugador, " ¡¡¡ Que comience la Batalla !!!";
	
	Escribir "";
	Escribir "";
	
	Escribir "                                                                           Pesione Enter para continuar...";
	leer tecla;
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "";
	
FinSubProceso


SubAlgoritmo batallaNavalLoop(nombre_jugador Por Referencia)
	
	//ESTAS VARIABLES  O AL MENOS LAS MATRIZ JUGADOR Y ENEMIGO VAN A TENER QUE SER PASAR POR REFERENCIA a los otrso sub algoritomos
	Definir matrizJugador, contadorBarcosEnemigo, contadorBarcosJugador, i, j Como Entero;
	Dimension matrizJugador[11,11];
	Definir matrizEnemigo Como Entero;
	Dimension matrizEnemigo[11,11];
	Definir ganar, perder Como Logico;
	Dimension contadorBarcosEnemigo[5], contadorBarcosJugador[5] ;
	
	//contador enemigo
    contadorBarcosEnemigo[1] <- 4; // tamaño del portaviones
    contadorBarcosEnemigo[2] <- 4; // tamaño del crucero
    contadorBarcosEnemigo[3] <- 4; // tamaño del submarino
    contadorBarcosEnemigo[4] <- 2; // tamaño de la lancha
	//Contador jugador
	contadorBarcosJugador[1] <- 4; // tamaño del portaviones
    contadorBarcosJugador[2] <- 4; // tamaño del crucero
    contadorBarcosJugador[3] <- 4; // tamaño del submarino
    contadorBarcosJugador[4] <- 2; // tamaño de la lancha
	
	para i <- 0 Hasta 10 Con Paso 1 Hacer
		para j <- 0 Hasta 10 Con Paso 1 Hacer
			Escribir Sin Saltar "    "; //centrado de la matriz margen superior
			matrizJugador[i,j] <- 0;
		FinPara
		
	FinPara
	mostrarTableroJugador(matrizJugador);
	Borrar Pantalla;
	IngresarPosicionBarcoJugador(matrizJugador);
	colocar_barcos_enemigo(matrizEnemigo);
	Borrar Pantalla;
	
	Repetir
		mostrarTableroJugadorEnemigo(matrizJugador, matrizEnemigo);
		ataqueDelJugador(matrizEnemigo, contadorBarcosEnemigo);
		ataqueDelEnemigo(matrizJugador, contadorBarcosJugador); //atacar enemigo
		
		i <-1;
		ganar <- Verdadero;		
		
		Mientras i < 5 y (ganar == Verdadero) hacer
			ganar <- contadorBarcosEnemigo[i] == 0 ;
			i <- i +1;
		FinMientras
		
		perder <- Verdadero;
		i <-1;
		Mientras i < 5 y (perder == Verdadero) hacer
			perder <- contadorBarcosJugador[i] == 0 ;
			i <- i +1;
		FinMientras
		
	Hasta Que ganar o perder
	
	Si ganar Entonces
		Borrar Pantalla;
		Escribir "";
		Escribir "Felicitaciones ha ganado!!!";
	SiNo
		Borrar Pantalla;
		Escribir "";
		Escribir "Has sido derrotado. No te rindas, vuelve a jugar";
	FinSi
	
	//Mostrar mensaje de agradecimiento al final del juego
	finDelJuego(nombre_jugador);
	Creditos();
	
FinSubAlgoritmo

// En este subproceso le mostramos el tablero que utilizara el jugador

SubAlgoritmo mostrarTableroJugador(matrizJugador Por Referencia)
	Definir i,j, filaNumeros Como Entero;
	Definir columnaLetras Como cadena;
	columnaLetras <- " ABCDEFGHIJ";
	Dimension filaNumeros[10];
	Definir tecla Como Caracter;
	Definir esJugador Como Logico;
	
	para i <- 0 Hasta 9 Con Paso 1 Hacer
		filaNumeros[i] <- i + 1 ;
		
	FinPara 
	
	Escribir "Este es tu tablero piensa en donde ubicar tus barcos"; 
	

	
	para i <- 0 Hasta 10 Con Paso 1 Hacer
		Escribir ""; 
		esJugador <- Verdadero;
		mostrarValor(matrizJugador, columnaLetras, filaNumeros, i, esJugador);	//llamo a la funcion para mostrar una matriz
		Escribir "";
	FinPara
	Escribir "";
	Escribir "                                                                           Presiona Enter para continuar...";
	leer tecla;
FinSubAlgoritmo

//-------------------------------------------------------------------------------------------------------------------------------------------------------

// En este subproceso le indicamos al juagdor para que coloque sus barcos en el tablero

SubAlgoritmo IngresarPosicionBarcoJugador(matriz Por Referencia) 
	definir posicion,columna, fila,i,j,size,tipo,h,formato Como Entero;
	definir arregloLetras, dato, arregloNumeros Como Caracter;
	definir columnaLetras, columnaNumeros como cadena;
	Definir esValido, encontrado Como Logico;
	esValido <- Verdadero;
	Dimension arregloLetras(11);
	dimension arregloNumeros(11);
	columnaLetras <- " ABCDEFGHIJ";
	columnaNumeros <- " 1234567890";
	columna <- 12;
	fila <- 12;
	

	Para i<-0 Hasta 10 Con Paso 1 Hacer
		arregloNumeros[i] <- SubCadena(columnaNumeros,i,i);
	FinPara
	
	Para j<-0 Hasta 10 Con Paso 1 Hacer
		arregloLetras[j] <- SubCadena(columnaLetras,j,j);
	FinPara
	
	// Arreglo para almacenar los tamaños y formatos de los barcos enemigos
    definir barco Como Entero;
    definir formatos Como Entero;
	Definir nombreDeBarco Como Caracter;
	Dimension nombreDeBarco[5];
	Dimension barco[5];
	dimension formatos[5];
	definir tecla Como Caracter;
	
	//Nombres e barco
	nombreDeBarco[1] <- "portaviones"; // tamaño del portaviones
    nombreDeBarco[2] <- "crucero"; // tamaño del crucero
    nombreDeBarco[3] <- "submarino"; // tamaño del submarino
    nombreDeBarco[4] <- "lancha"; // tamaño de la lancha
	
	
    // Definir tamaños y formatos para cada tipo de barco
    barco[1] <- 4; // tamaño del portaviones
    barco[2] <- 4; // tamaño del crucero
    barco[3] <- 4; // tamaño del submarino
    barco[4] <- 2; // tamaño de la lancha
    
    formatos[1] <- 9; // formato del portaviones
    formatos[2] <- 8; // formato del crucero
    formatos[3] <- 7; // formato del submarino
    formatos[4] <- 6; // formato de la lancha
	
	// Inicializar la matriz con agua (0 representa agua)
//    Para i <- 1 Hasta 10 Hacer
//        Para j <- 1 Hasta 10 Hacer
//            matriz[i, j] <- 0;
//        FinPara
//    FinPara
    
    // Colocar cada barco automáticamente
    Para tipo <- 1 Hasta 4 Hacer
		Repetir
			Escribir sin saltar "Coloque el ",nombreDeBarco[tipo] ," en el tablero, ", "con tamaño ", barco[tipo], " .";
			
			h <-0;
			// Solicitar columna al usuario
			mientras h = 0 hacer
				h <-1;
				mostrarTableroJugador(matriz);
				
				Escribir "elija en que columna quiere colocar su barco (1-2-3-4-5-6-7-8-9-10) ";
				Leer dato;
				
				encontrado <- falso;
				i<-0;
				// Busqueda secuencial
				mientras (i<11 y encontrado = Falso ) Hacer
					Si (arregloNumeros[i] = dato) Entonces
						encontrado <- Verdadero;
						columna <- i;
					FinSi
					i <- i +1;
				FinMientras
				si dato = "10" entonces
					columna <- 10;
				FinSi
				si columna < 1 o columna > 11 Entonces
					escribir "el valor dado esta fuera del rango";
					h <- 0;
				FinSi
			FinMientras
			
			// solicitar fila
			h <-0;
			mientras h = 0 hacer
				h <-1;
				Escribir "elija en que fila quiere colocar su barco (A-B-C-D-E-F-G-H-I-J) ";
				Leer dato;
				dato <- Mayusculas(dato);
				encontrado <- falso;
				j<-0;
				//Busqueda secuencial
				mientras (j<11 y encontrado = Falso ) Hacer
					Si (arregloLetras[j] = dato) Entonces
						encontrado <- Verdadero;
						fila <- j;
					FinSi
					j <- j +1;
				FinMientras
				
				si fila <1 o fila>11 Entonces
					escribir "el valor dado esta fuera del rango";
					h <- 0;
				FinSi
			FinMientras
			
			si (columna + barco[tipo]-1) > 10 Entonces
				
				Escribir "El ",nombreDeBarco[tipo] ," se ubicaria fuera del tablero, elija otra ubicacion ";
				Escribir "";
			SiNo
				si matriz[fila,columna] <> 0 o matriz[fila,columna+1] <> 0 o matriz[fila,columna+2] <> 0 Entonces
					Escribir "Ya hay un barco en esta posicion, elija otra.";
					Escribir "";
				FinSi
			finsi
			
			
			
		Hasta Que ((columna + barco[tipo]-1) < 10) y (matriz[fila,columna] == 0 y matriz[fila,columna+1] == 0 y matriz[fila,columna+2] == 0)
        
        // Colocar el barco en la matriz
        h <- 0;
        Para i <- 0 Hasta barco[tipo]-1 Hacer
            matriz[fila, columna+h] <- formatos[tipo];
            h <- h + 1;
        FinPara
		
		Escribir Sin Saltar "El barco a sido colocado en la siguiente ubicacion del tablero (",fila,",",arregloLetras[columna],"):";
		Escribir "";
		mostrarTableroJugador(matriz);
		Borrar Pantalla;
    FinPara
	
	// Se le indica al jugador que presinando enter se colocaran 
	//los barcos del enemigo en el tablero
	
	Escribir " El enemigo colocara sus barcos en el tablero";
	escribir " Presione ENTER para continuar";
	leer tecla;
    
    // Mostrar la matriz con los barcos colocados automáticamente
    Escribir "Los barcos han sido colocados correctamente:";
	Escribir "";
	
	
	Escribir "";
	Escribir " Presione ENTER para continuar";
	leer tecla;
	Escribir "";
	
FinSubAlgoritmo

SubAlgoritmo mostrarTableroJugadorEnemigo(matrizJugador Por Referencia, matrizEnemigo Por Referencia)
	Definir i,j, filaNumeros Como Entero;
	Definir columnaLetras Como cadena;
	columnaLetras <- " ABCDEFGHIJ";
	Dimension filaNumeros[10];
	Definir esJugador Como Logico;
	Definir tecla Como Caracter;
	
	para i <- 0 Hasta 9 Con Paso 1 Hacer
		filaNumeros[i] <- i + 1 ;
		
	FinPara 
	
	Escribir "Este es tu tablero                                                                        Este es el tablero del enemigo"; 
	
	
	para i <- 0 Hasta 10 Con Paso 1 Hacer
		Escribir ""; 
		esJugador <- Verdadero;
		mostrarValor(matrizJugador, columnaLetras, filaNumeros, i, esJugador);	//llamo a la funcion para mostrar una matriz
		esJugador <- Falso;
		mostrarValor(matrizEnemigo, columnaLetras, filaNumeros, i, esJugador);	
		Escribir "";
	FinPara
	
	Escribir "";
	Escribir "                                                                           Presiona Enter para continuar...";
	leer tecla;
FinSubAlgoritmo

SubAlgoritmo mostrarValor(matriz Por Referencia, columnaLetras Por Referencia, filaNumeros Por Referencia, i Por Valor, esjugador Por Valor)
	Definir j Como Entero;
	
	Escribir Sin Saltar "             "; // aqui centramos la matriz margen de izquierda a derecha
	Escribir Sin Saltar Subcadena(columnaLetras, i, i);
	Escribir Sin Saltar "     ";// separacion de la matriz de la primera columna	
	
	para j<-0 Hasta 9 Con Paso 1 Hacer
		si i == 0 Entonces// si true muestro los numeros
			Escribir Sin Saltar filaNumeros[j];
			Escribir Sin Saltar "     "; // separacion entre los numeros
		sino 
			//Aqui imprimimos matriz (MODO DEBUG) DESCOMITEAR ESTAS 2 LINEAS Y COMMITEAR LAS OTRAS

			Si esJugador Entonces
//				Escribir Sin Saltar matriz[i,j+1]; // MODO DEBUG
//				Escribir Sin Saltar "     "; // MODO DEBUG
			
				si matriz[i,j+1] == -1 Entonces 
					Escribir Sin Saltar "A"; // 
					Escribir Sin Saltar "     ";
				FinSi
				si matriz[i,j+1] == 0 Entonces 
					Escribir Sin Saltar "~"; // 
					Escribir Sin Saltar "     "; // separacion del simbolo agua
				FinSi
				si matriz[i,j+1] < -1 Entonces 
					Escribir Sin Saltar "*"; // 
					Escribir Sin Saltar "     ";
				FinSi
				si matriz[i,j+1] == 6 Entonces 
					Escribir Sin Saltar "L"; // 
					Escribir Sin Saltar "     ";
				FinSi
				si matriz[i,j+1] == 7 Entonces 
					Escribir Sin Saltar "S"; // 
					Escribir Sin Saltar "     ";
				FinSi
				si matriz[i,j+1] == 8 Entonces 
					Escribir Sin Saltar "C"; // 
					Escribir Sin Saltar "     ";
				FinSi
				si matriz[i,j+1] == 9 Entonces 
					Escribir Sin Saltar "P"; // 
					Escribir Sin Saltar "     ";
				FinSi
			SiNo
				si matriz[i,j+1] == -1 Entonces 
					Escribir Sin Saltar "A"; // 
					Escribir Sin Saltar "     ";
				FinSi
				si matriz[i,j+1] >= 0 Entonces 
					Escribir Sin Saltar "~"; // 
					Escribir Sin Saltar "     "; // separacion del simbolo agua
				FinSi
				si matriz[i,j+1] == -6 Entonces 
					Escribir Sin Saltar "L"; // 
					Escribir Sin Saltar "     ";
				FinSi
				si matriz[i,j+1] == -7 Entonces 
					Escribir Sin Saltar "S"; // 
					Escribir Sin Saltar "     ";
				FinSi
				si matriz[i,j+1] == -8 Entonces 
					Escribir Sin Saltar "C"; // 
					Escribir Sin Saltar "     ";
				FinSi
				si matriz[i,j+1] == -9 Entonces 
					Escribir Sin Saltar "P"; // 
					Escribir Sin Saltar "     ";
				FinSi
			FinSi
			
		FinSi
	FinPara
	
	
FinSubAlgoritmo	

// Esta funcion permite atacar al enemigo
SubAlgoritmo ataqueDelJugador(matrizEnemigo Por Referencia, contadorBarcosEnemigo Por Referencia)
	Escribir "Ingresa la coordenada para atacar al enemigo";
	Definir posicion, columna, fila, i, j, h como Entero;
	definir arregloLetras, dato, arregloNumeros Como Caracter;
	Definir columnaLetras,columnaNumeros como cadena;
	Definir encontrado Como Logico; 
	Dimension arregloLetras(11);
	dimension arregloNumeros(11);
	columnaLetras <- " ABCDEFGHIJ";
	columnaNumeros <- " 1234567890";
	columna <- 12;
	fila <- 12;
	
	
	Para i<-0 Hasta 10 Con Paso 1 Hacer
		arregloNumeros[i] <- SubCadena(columnaNumeros,i,i);
	FinPara
	
	Para j<-0 Hasta 10 Con Paso 1 Hacer
		arregloLetras[j] <- SubCadena(columnaLetras,j,j);
	FinPara
	
	h <-0;
	// Solicitar columna al usuario
	mientras h = 0 hacer
		h <-1;
				
		Escribir "elija en que columna quiere colocar su barco (1-2-3-4-5-6-7-8-9-10) ";
		Leer dato;
		
		encontrado <- falso;
		i<-0;
		// Busqueda secuencial
		mientras (i<11 y encontrado = Falso ) Hacer
			Si (arregloNumeros[i] = dato) Entonces
				encontrado <- Verdadero;
				columna <- i;
			FinSi
			i <- i +1;
		FinMientras
		si dato = "10" entonces
			columna <- 10;
		FinSi
		si columna < 1 o columna > 11 Entonces
			escribir "el valor dado esta fuera del rango";
			h <- 0;
			FinSi
	FinMientras
	
	// solicitar fila
	h <-0;
	mientras h = 0 hacer
		h <-1;
		Escribir "elija en que fila quiere colocar su barco (A-B-C-D-E-F-G-H-I-J) ";
		Leer dato;
		dato <- Mayusculas(dato);
		encontrado <- falso;
		j<-0;
		//Busqueda secuencial
		mientras (j<11 y encontrado = Falso ) Hacer
			Si (arregloLetras[j] = dato) Entonces
				encontrado <- Verdadero;
				fila <- j;
			FinSi
			j <- j +1;
		FinMientras
		
		si fila <1 o fila>11 Entonces
			escribir "el valor dado esta fuera del rango";
			h <- 0;
		FinSi
	FinMientras
	
	Borrar Pantalla;
    Escribir "Desplegando ataque en las coordenadas ", columna, " : ", dato;
	Escribir "";
	
	
	//Verficar coordenadas
	Segun matrizEnemigo[fila, columna] Hacer
		0:
			Escribir "Le has dado al Agua";
			matrizEnemigo[fila, columna] <- -1; // -1 representa agua
		6: // formato de la lancha
			matrizEnemigo[fila, columna] <- -6;// representa lancha dañado
			Si contadorBarcosEnemigo[4] == 1 Entonces
				Escribir "Excelente soldado ha destruido la lancha del enemigo!";				
				contadorBarcosEnemigo[4] <- contadorBarcosEnemigo[4] - 1;
			SiNo
				Escribir "Genial soldado, le diste a la lancha del enemigo";
				contadorBarcosEnemigo[4] <- contadorBarcosEnemigo[4] - 1;
			FinSi
		7: // formato del submarino
			matrizEnemigo[fila, columna] <- -7; // representa submarino dañado
			Si contadorBarcosEnemigo[3] == 1 Entonces
				Escribir "Excelente soldado ha destruido el submarino del enemigo!";
				contadorBarcosEnemigo[3] <- contadorBarcosEnemigo[3] - 1;
			SiNo
				Escribir "Genial soldado, le diste al submarino del enemigo";
				contadorBarcosEnemigo[3] <- contadorBarcosEnemigo[3] - 1;
			FinSi
		8: // formato del crucero
			matrizEnemigo[fila, columna] <- -8; // representa crucero dañado
			Si contadorBarcosEnemigo[2] == 1 Entonces
				Escribir "Excelente soldado ha destruido el crucero del enemigo!";
				contadorBarcosEnemigo[2] <- contadorBarcosEnemigo[2] - 1;
			SiNo
				Escribir "Genial soldado, le diste al crucero del enemigo";
				contadorBarcosEnemigo[2] <- contadorBarcosEnemigo[2] - 1;
			FinSi
		9: // formato del portaviones
			matrizEnemigo[fila, columna] <- -9; // representa portaviones dañado
			Si contadorBarcosEnemigo[1] == 1 Entonces
				Escribir "Excelente soldado ha destruido el portaviones del enemigo!";
				contadorBarcosEnemigo[1] <- contadorBarcosEnemigo[1] - 1;
			SiNo
				Escribir "Genial soldado, le diste al portaviones del enemigo.";
				contadorBarcosEnemigo[1] <- contadorBarcosEnemigo[1] - 1;
			FinSi
			
		De Otro Modo:
			Escribir "Ya has atacado aqui, turno del enemigo";
	FinSegun
	
	
FinSubAlgoritmo

//---------------------------------------------------------------------------------------------------------------------------------------------------

// Esta funcion permite que el enemigo ataque
SubAlgoritmo ataqueDelEnemigo(matrizJugador Por Referencia, contadorBarcosJugador Por Referencia)
	
	Definir posicion, columna, fila, i, j como Entero;
	Definir arregloLetras, dato, aux Como Caracter;
	Definir columnaLetras como cadena;
	Definir encontrado Como Logico; 
	Definir letra Como Caracter;
	Dimension arregloLetras(11);
	
	columnaLetras <- " ABCDEFGHIJ";
	
	
	Para i<-0 Hasta 10 Con Paso 1 Hacer
		arregloLetras[i] <- SubCadena(columnaLetras,i,i);
	FinPara
	

	Repetir
		// Tomar valores al azar de filas y columnas para atacar 
		columna <- Aleatorio(1,10);
		dato <- Subcadena(columnaLetras ,i,i);
		
		dato <- Mayusculas(dato);
		encontrado <- falso;
		fila <- Aleatorio(1,10) ;
	Hasta Que matrizJugador[fila, columna] >= 0
	
	i<-1;//  Empezamos desde el 1 para no contar al espacio como encontrado
	// Busqueda secuencial
	mientras (i<11 y encontrado = Falso ) Hacer
		Si (arregloLetras[i] = dato) Entonces
			encontrado <- Verdadero;
			fila <-i;
		FinSi
		i <- i +1;
	FinMientras

	//Verficar coordenadas
	Segun matrizJugador[fila, columna] Hacer
		0:
			matrizJugador[fila, columna] <- -1; // -1 representa agua
		6: // formato de la lancha
			matrizJugador[fila, columna] <- -6;// representa lancha dañado
			Si contadorBarcosJugador[4] == 1 Entonces
				contadorBarcosJugador[4] <- contadorBarcosJugador[4] - 1;
			SiNo
				contadorBarcosJugador[4] <- contadorBarcosJugador[4] - 1;
			FinSi
		7: // formato del submarino
			matrizJugador[fila, columna] <- -7; // representa submarino dañado
			Si contadorBarcosJugador[3] == 1 Entonces
				contadorBarcosJugador[3] <- contadorBarcosJugador[3] - 1;
			SiNo
				contadorBarcosJugador[3] <- contadorBarcosJugador[3] - 1;
			FinSi
		8: // formato del crucero
			matrizJugador[fila, columna] <- -8; // representa crucero dañado
			Si contadorBarcosJugador[2] == 1 Entonces
				contadorBarcosJugador[2] <- contadorBarcosJugador[2] - 1;
			SiNo
				contadorBarcosJugador[2] <- contadorBarcosJugador[2] - 1;
			FinSi
		9: // formato del portaviones
			matrizJugador[fila, columna] <- -9; // representa portaviones dañado
			Si contadorBarcosJugador[1] == 1 Entonces
				contadorBarcosJugador[1] <- contadorBarcosJugador[1] - 1;
			SiNo
				contadorBarcosJugador[1] <- contadorBarcosJugador[1] - 1;
			FinSi
			
		De Otro Modo:
	FinSegun
		
FinSubAlgoritmo

SubAlgoritmo   colocar_barcos_enemigo(matrizEnemigo Por Referencia)
    definir columna,fila, i, j,tipo,h Como Entero;
    
	// Inicializar la matriz con agua (0 representa agua)
    Para i <- 1 Hasta 10 Hacer
        Para j <- 1 Hasta 10 Hacer
            matrizEnemigo[i, j] <- 0;
        FinPara
    FinPara
	
    // Arreglo para almacenar los tamaños y formatos de los barcos enemigos
    definir barco Como Entero;
    definir formatos Como Entero;
	Dimension barco[5];
	dimension formatos[5];
	definir tecla Como Caracter;
    
    // Definir tamaños y formatos para cada tipo de barco
    barco[1] <- 4; // tamaño del portaviones
    barco[2] <- 4; // tamaño del crucero
    barco[3] <- 4; // tamaño del submarino
    barco[4] <- 2; // tamaño de la lancha
    
    formatos[1] <- 9; // formato del portaviones
    formatos[2] <- 8; // formato del crucero
    formatos[3] <- 7; // formato del submarino
    formatos[4] <- 6; // formato de la lancha
    
    // Colocar cada barco automáticamente
    Para tipo <- 1 Hasta 4 Hacer
        // Establece ubicación aleatoria dentro de los límites del tablero
		// SERIA UN CHECK DE LA VARIABLE COLUMNA DE ARRIBA MAS LAS QUE TIENE QUE SER COLOCADAS
		//si el lugar es en columna i y lugar en columna i +1 +2+ +4 0 hago algo 		
		Repetir	
			columna <- Aleatorio(1, 10 - barco[tipo] + 1);
			fila <- Aleatorio(1, 10);
		Hasta Que matrizEnemigo[fila,columna] == 0 y matrizEnemigo[fila,columna+1] == 0 y matrizEnemigo[fila,columna+2] == 0
        // Colocar el barco en la matriz
        h <- 0;
		
        Para i <- 0 Hasta barco[tipo]-1 Hacer
            matrizEnemigo[fila, columna+h] <- formatos[tipo];
            h <- h + 1;
        FinPara
		
		
    FinPara
	
	// Se le indica al jugador que presinando enter se colocaran 
	//los barcos del enemigo en el tablero
	
	Escribir " El enemigo colocara sus barcos en el tablero";
	escribir " Presione ENTER para continuar";
	leer tecla;
    
    // Mostrar la matriz con los barcos colocados automáticamente
    Escribir "Los barcos han sido colocados correctamente:";
	Escribir "";
	
	
	Escribir "";
	Escribir " Presione ENTER para continuar";
	leer tecla;
	Escribir "";
    
FinSubAlgoritmo

SubAlgoritmo finDelJuego(nombre_jugador por referencia)
	Definir tecla Como Caracter;
    // Mostrar mensaje de agradecimiento al usuario
	Escribir "";
    Escribir "¡Gracias por jugar, ", nombre_jugador, "! Esperamos que hayas disfrutado del juego.";
    Escribir "Recuerda: Si lo puedes imaginar, lo puedes programar.";
	Escribir "Ariel Bentancud";
	Escribir "";
	Escribir "                                                                           Presiona enter para continuar...";
	leer tecla;
	Borrar Pantalla;
FinSubAlgoritmo




SubAlgoritmo  ReglasDelJuego
	
	Escribir "===========================================================================================================================================================================================";
	Escribir "                                                                                    Reglas del juego"; 
	Escribir "===========================================================================================================================================================================================";
	Escribir "";
	Escribir " Las reglas de la batalla naval son";
	Escribir "";
	Escribir " CONDICIONES INICIALES:";
	Escribir " Cantidad de jugadores: 2 jugadores";
	Escribir " Para iniciar el juego cada jugador debe tener: ";
	Escribir " 1 Portaaviones , 1 crucero , 1 submarino";
	
	Escribir "";
	Escribir " COMIENZO DEL JUEGO";
	Escribir " 1 - Los jugadores eligen quien inicia el ataque";
	Escribir " 2 - Cada jugador coloca sus barcos horizontal o verticalmente (no en diagonal) ";
	Escribir " 3 - Cuando hayan sido colocados todos los barcos anuncian LISTO, a partir de ese momento no se pueden cambiar los barcos de posición.";
	Escribir "";
	Escribir " COMIENZA EL COMBATE";
	Escribir " 1 - El jugador que primero dijo LISTO, abre el fuego ingresando las coordenadas (compuesta por una letra y un numero) tratando de alcanzar un barco enemigo, luego lo hará su ";
	Escribir"      contrincante y así sucesivamente.";
	Escribir " 2 - El disparo es anunciado con una Letra y un Número que corresponden a una coordenada del tablero enemigo localizado por la convergencia entre la Letra y el Número de su base.";
	Escribir " 3 - El atacado deberá informar su situación: TOCADO, si el disparo fue certero ó AGUA, si el disparo fue errado y el tipo de barco alcanzado (Portaaviones, Submarinos, etc).";
	Escribir "";
	Escribir " MARCACIÓN";
	Escribir " 1 - Después que el jugador haya efectuado el disparo y sepa si ha acertado o no, podrá ir visualizando los aciertos, ésto le servirá de referencia y evitará repetir los disparos";
	Escribir "     a los mismos puntos.";
	Escribir " 2 - No se marcan los tiros fallidos del adversario pero sí los impactos.";
	Escribir "";				
	Escribir " HUNDIR LOS BARCOS";
	Escribir " 1 - Cuando un barco haya recibido tantos impactos como agujeros tiene, se considera HUNDIDO y deberá ser retirado de la base debiendo ser anunciado al oponente.";
	Escribir " 2 - Los jugadores deben ser honestos anunciando los impactos recibidos, en caso de duda o posible equivocación se solicita tregua y se revisan los disparos realizados hasta el momento.";
	
	Escribir "     Será ganador el primer jugador que hunda los cuatro barcos de su oponente.";
	Escribir "";
	Escribir "                                                                                       ¡A JUGAR!";

	Escribir "";
FinSubAlgoritmo

SubAlgoritmo Creditos
	
	definir tecla Como Caracter;
	
	Escribir "                                                    ===================================================";
    Escribir "                                                                        Créditos     ";
    Escribir "                                                    ===================================================";
    Escribir "                                                             Desarrollado por:**GOLDEN BYTES** ";
    Escribir "                                                              - Maxi Montenegro";
    Escribir "                                                              - Irene Machuca";
    Escribir "                                                              - Valentin Felipe";
	Escribir "                                                              - Felipe Landi";
	Escribir "                                                              - Leonardo Gomez ";
	Escribir "                                                              - Ezequiel Quiroz";
	Escribir "                                                              - Franco Poblete";
	Escribir "";	
    Escribir "                                                             Agradecimientos especiales a:";
    Escribir "                                                              - Profesor Ariel Betancud";
    Escribir "                                                              - Profesora Natalia Lucero";
	Escribir "                                                              - Profesor Osvaldo Giordanini";
    Escribir "                                                    ===================================================";
	Escribir "                                                                 © 2024 Golden Bytes";
    Escribir "                                                             Todos los derechos reservados.";
    Escribir "                                                      Este juego y su contenido no pueden ser copiados,";
    Escribir "                                                      distribuidos o utilizados sin autorización previa.";
    Escribir "                                                    ===================================================";
	Escribir "                                                       PRESIONE ENTER PARA VOLVER AL MENU PRINCIPAL";
	Leer tecla;
	Borrar Pantalla;
	
	
FinSubAlgoritmo
	