// menu-varias opciones-opcion "tener las rglas del juego o como jugar"
// 1.	jugar 
// 2.	reglas del juego o como jugar
// 3.	creditos
// 4.	Salir 
Proceso ReglasDelJuego
	definir opcion como entero;
	definir matriz como real;
	dimension matriz[4,4];
	Repetir
		Escribir "MENU";
		Escribir "1- Jugar";
		Escribir "2- Reglas del juego";
		Escribir "3- Creditos";
		Escribir "4- salir";
		Escribir sin saltar "digite la opcion de menu:";
		Leer opcion;
		escribir "";
		Segun opcion Hacer
			1:
				Escribir "inicio de juego"; //llenarMatriz(matriz);
			2:
				Escribir "Reglas del juego"; 
			3:
				Escribir "Creditos";
			4:
			De Otro Modo:
				Escribir "se equivocó de opcion de menu.";
		FinSegun
		Escribir "";
	Hasta Que opcion = 4
FinProceso

SubProceso llenarMatriz(matriz por referencia)
	definir i,j como enteros;
	Para i<-0 Hasta 3 Hacer
		Para j<-0 Hasta 3 Hacer
			Escribir sin saltar "digite un numero[",i,"][",j,"]:";
			Leer matriz[i,j];
			si opcion = 2 Entonces
				escribir "las reglas del juego son:";
			SiNo
				Escribir "se equivocó de opcion de menu.";
			FinSi
		FinPara
	FinPara
FinSubProceso
