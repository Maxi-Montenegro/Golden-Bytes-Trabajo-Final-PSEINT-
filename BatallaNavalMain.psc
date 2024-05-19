//Usaremos este archivo para nuestro trabajo





Proceso BatallaNavalMain
	
	textoEstatico();
	Borrar Pantalla;
	Animacion();
	Borrar Pantalla;
	MensajeBienvenida();
	Borrar Pantalla;
	mostrarTableroJugador();
	
FinProceso

// Eset subproceso es una animacion que muestra el nombre de nuestro juego
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
	logo[5] <- "      8 8888.   ,88´     .8. `88888.      8 8888      .8. `88888.      8 8888         8 8888              .8. `88888.";      
	logo[6] <- "      8 8888888888      .8`8. `88888.     8 8888     .8`8. `88888.     8 8888         8 8888             .8`8. `88888.";     
	logo[7] <- "      8 8888    `88.   .8´ `8. `88888.    8 8888    .8´ `8. `88888.    8 8888         8 8888            .8´ `8. `88888.";    
	logo[8] <- "      8 8888      88  .8´   `8. `88888.   8 8888   .8´   `8. `88888.   8 8888         8 8888           .8´   `8. `88888.";   
	logo[9] <- "      8 8888    ,88´ .888888888. `88888.  8 8888  .888888888. `88888.  8 8888         8 8888          .888888888. `88888.";  
	logo[10]<- "      8 888888888P  .8´       `8. `88888. 8 8888. 8´       `8. `88888. 8 888888888888 8 888888888888 .8´       `8. `88888.";
	logo[11]<- "                                    ";
	logo[12]<- "                                    ";
	logo[13]<- "                                    ";
	logo[14]<- "                                                                    b.             8            .8.   `8.`888b           ,8´   .8.            8 8888";
	logo[15]<- "                                                                    888o.          8           .888.   `8.`888b         ,8´   .888.           8 8888";
	logo[16]<- "                                                                    Y88888o.       8          :88888.   `8.`888b       ,8´   :88888.          8 8888";
	logo[17]<- "                                                                    .`Y888888o.    8         . `88888.   `8.`888b     ,8´   . `88888.         8 8888";
	logo[18]<- "                                                                    8o. `Y888888o. 8        .8. `88888.   `8.`888b   ,8´   .8. `88888.        8 8888";
	logo[19]<- "                                                                    8`Y8o. `Y88888o8       .8`8. `88888.   `8.`888b ,8´   .8`8. `88888.       8 8888";         
	logo[20]<- "                                                                    8   `Y8o. `Y8888      .8´ `8. `88888.   `8.`888b8´   .8´ `8. `88888.      8 8888";
	logo[21]<- "                                                                    8      `Y8o. `Y8     .8´   `8. `88888.   `8.`888´   .8´   `8. `88888.     8 8888";
	logo[22]<- "                                                                    8         `Y8o.`    .888888888. `88888.   `8.`8´   .888888888. `88888.    8 8888";
	logo[23]<- "                                                                    8            `Yo   .8´       `8. `88888.   `8.`   .8´       `8. `88888.   8 888888888888"; 
	
	// Para hacer aparecer el logo gradualmente recorremos el arreglo 
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
	
	
	
	// Para hacer desaparecer el logo gradualmente recorremos el arreglo de manera inversa
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
	Escribir "                                                              ***EL JUEGO COMIENZA***";
	
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "                                                            Presione Enter para continuar...";
	Leer tecla;
	
Fin subProceso

// En este subproceso damos inicio a la portada del juego

SubProceso   textoEstatico
	
    definir tecla Como Caracter;
	// Esta seria la pantalla inicial a modo de caratula 
	
	
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "                                                         Universidad Tecnologica Nacional";
	Escribir "";
	Escribir "                                                           Facultad Regional San Rafael";
	Escribir "";
	Escribir "";
	Escribir "                                                               Proyecto Integrador";
	Escribir "";
	Escribir "                                                                T.U.P COHORTE 2024"; 
	
	Escribir "";
	Escribir "";
	Escribir "";
	
	Escribir "                                   ............................................................................. ";
    Escribir "                                   ............................................................................. ";
    Escribir "                                   ............................................................................. ";
    Escribir "                                   ... GOLDEN       ****  ****  ****    **    ****  *    *  *****      *     ... ";
    Escribir "                                   ...      BYTES   *  *  *  *  *      *   *  *     * *  *    *       * *    ... ";
    Escribir "                                   ...              ****  ****  ***      \    ***   *  * *    *      *   *   ... ";
    Escribir "                                   ...              *     * *   *     *   *   *     *    *    *     *******  ... ";
    Escribir "                                   ...              *     *  *  ****    **    ****  *    *    *    *       * ... ";
    Escribir "                                   ............................................................................. ";
    Escribir "                                   ............................................................................. ";
    Escribir "                                   ............................................................................. ";
	Escribir "";
	Escribir "";
    Escribir "                                                         Presione Enter para continuar...";
    Leer tecla;
	
	
FinSubProceso

// Aqui Damos un Mensaje de Bienvenida al Jugador 

SubProceso MensajeBienvenida
	
	definir Nombre_Jugador, tecla Como Caracter; 
	
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "                                                       ¡¡¡ Bienvenido Soldado !!!";
	Escribir "";
	Escribir "                                              Estas Listo y preparado para esta Gran Aventura";
	Escribir "";
	Escribir "                                                            Presentate Soldado ";
	Escribir "                                                            Escribe Tu Nombre ";
	leer nombre_jugador ;
	Escribir "";
	Escribir "                                            Perfecto soldado"," ", nombre_jugador, " ¡¡¡ Que comience la Batalla !!!";
	ESCRIBIR "";
	Escribir "";
	
	Escribir "                                                        Pesione Enter para continuar...";
	leer tecla;
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "";
	
FinSubProceso

SubAlgoritmo mostrarTableroJugador
	Definir matrizJugador, i,j, filaNumeros Como Entero;
	Definir columnaLetras Como cadena;
	Dimension matrizJugador[11,11], filaNumeros[10];
	columnaLetras <- " ABCDEFGHIJ";
		
	Dimension map[10,10];
		
	para i <- 0 Hasta 9 Con Paso 1 Hacer
				
		filaNumeros[i] <- i + 1 ;
		
	FinPara 
	
	
	// Lleno matriz del con 0
	para i <- 0 Hasta 10 Con Paso 1 Hacer
		para j <- 0 Hasta 10 Con Paso 1 Hacer
			Escribir Sin Saltar "         "; //centrado de la matriz margen superior
			matrizJugador[i,j] <- 0;
		FinPara
		
	FinPara
	
	
	para i <- 0 Hasta 10 Con Paso 1 Hacer
		Escribir "";                                 
		Escribir Sin Saltar "                                        "; // aqui centré la matriz margen de izquierda a derecha
		para j <- 0 Hasta 9 Con Paso 1 Hacer
			//Escribir Sin Saltar "        "; //centrado de la matriz
			si j == 0 Entonces // si true se muestra las letras
				Escribir Sin Saltar Subcadena(columnaLetras, i, i);
				Escribir Sin Saltar "     ";// separacion de la matris de las primera columna
			FinSi
			si i == 0 Entonces// si true muestro los numeros
				Escribir Sin Saltar filaNumeros[j];
				Escribir Sin Saltar "     "; // separacion entre los numeros
			sino 
				si matrizJugador[i,j] == -1 Entonces 
					Escribir Sin Saltar "~"; // 
					Escribir Sin Saltar "     ";
				FinSi
				si matrizJugador[i,j] == 0 Entonces 
					Escribir Sin Saltar "~"; // 
					Escribir Sin Saltar "     "; // separacion del simbolo agua
				FinSi
				si matrizJugador[i,j] == 1 Entonces 
					Escribir Sin Saltar "¶"; // 
					Escribir Sin Saltar "     ";
				FinSi
				si matrizJugador[i,j] == 2 Entonces 
					Escribir Sin Saltar "*"; // 
					Escribir Sin Saltar "     ";
				FinSi
				
			FinSi
			
		FinPara
		Escribir "";
		
	FinPara
FinSubAlgoritmo

	