Algoritmo  batalla_naval
	
	Definir cx,x1 Como Entero;
	Definir cy ,y1 Como Entero;
	Definir destruir Como Entero;
	Definir balas Como Entero;
	Definir i,j,M,M2 Como Entero ;
	Escribir "";
	Escribir "                                  --TABLERO DE GUERRA--";
	Escribir "";
	Escribir "------------0------1------2------3------4------5------6------7------8------9----------";
	Escribir "";
	
	
	Dimension M[10,10];
	Dimension M2[10,10];
	
	balas <- 0;
	destruir <- 0 ;
	
	Para i<- 0 hasta 9 Hacer
		para j<-0 hasta 9 Hacer
			M[i,j]<- 0;
			M2[i,j] <- 0;
		FinPara
	FinPara
	
	Para i<-0 Hasta 9 Hacer
		Escribir Sin Saltar "> ",i, " <    ";
		para j<-0 hasta 9 Hacer
			Escribir Sin Saltar "  [", M[i,j],"]  ";
		FinPara
		Escribir " ";
		Escribir " ";
	FinPara
	Escribir " ";

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
		
		Si M2[cx,cy]=2 Entonces
			Escribir "HA DADO EN EL BARCO";
			M[cx,cy] <- 2;
			destruir<- destruir + 1;
		SiNo
			Escribir "                              --Disparo Al Mar--";
			M[cx,cy] <- 5;
		FinSi
		Escribir "";
		Escribir "------------0------1------2------3------4------5------6------7------8------9----------";
		Escribir "";
		Para i<-0 Hasta 9 Hacer
			Escribir Sin Saltar "> ",i, " <    ";
			Para j<-0 Hasta 9 Hacer
				Escribir Sin Saltar  "  [", M[i,j],"]  ";
			FinPara
			Escribir "";
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
	
FinAlgoritmo
	