Proceso colocar_barco
	definir posicion,columna, fila,i,j,size,tipo,h,formato Como Entero;
	definir arregloLetras, dato, arregloNumeros Como Caracter;
	definir columnaLetras, columnaNumeros como cadena;
	definir matriz Como Real;
	Dimension matriz[11,11];
	Definir esValido, encontrado Como Logico;
	esValido <- Verdadero;
	Dimension arregloLetras(11);
	dimension arregloNumeros(11);
	columnaLetras <- " ABCDEFGHIJ";
	columnaNumeros <- " 1234567890";
	columna <- 12;
	fila <- 12;
	
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
    Para i <- 1 Hasta 10 Hacer
        Para j <- 1 Hasta 10 Hacer
            matriz[i, j] <- 0;
        FinPara
    FinPara
    
    // Colocar cada barco automáticamente
    Para tipo <- 1 Hasta 4 Hacer
		Repetir
			Escribir sin saltar "Coloque el ",nombreDeBarco[tipo] ," en el tablero, ", "con tamaño ", barco[tipo], " .";
					
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
				si columna <1 o columna>11 Entonces
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
		
		Escribir Sin Saltar "Matriz el barco a sido colocado en la siguiente ubicacion (",fila,",",columna,"):";
		Escribir "";
		Para i <- 1 Hasta 10 hacer;
			Para j <- 1 Hasta 10 con paso 1 hacer;
				Escribir sin saltar matriz[i,j], " ";
			FinPara;
			Escribir "";
			
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
	
	

	
FinProceso