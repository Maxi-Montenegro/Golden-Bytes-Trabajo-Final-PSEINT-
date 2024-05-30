// menu-varias opciones-opcion "tener las rglas del juego o como jugar"
// 1.	jugar 
// 2.	reglas del juego o como jugar
// 3.	creditos
// 4.	Salir 
Proceso ReglasDelJuego
	definir opcion como entero;
	//definir matriz como real;
	//dimension matriz[4,4];
	//Repetir
		Escribir "MENU";
		Escribir "1- Jugar"; // aqui se redirige al subalgoritmo "mostrarTableroJugador(matrizJugador Por Referencia)"
		Escribir "2- Reglas del juego";
		Escribir "3- Creditos";// aqui se redirige al subalgoritmo "creditos ?"
		Escribir "4- salir";
		Escribir sin saltar "digite la opcion de menu:";
		Leer opcion;
		escribir "";
		Segun opcion Hacer
			1:
				Escribir "inicio de juego"; //;
			2:
				Escribir "                                                                                    Reglas del juego"; 
				Escribir "*************************************************************************************************************************++++**************************************************";
				Escribir "";
				Escribir " Las reglas de la batalla naval son";
				Escribir "";
				Escribir " CONDICIONES INICIALES:";
				Escribir " Cantidad de jugadores: 2 jugadores";
				Escribir " Para iniciar el juego cada jugador debe tener: ";
				Escribir " Portaaviones (cantidad), 1 crucero (cantidad), 1 submarino";
				
				Escribir "";
				Escribir " COMIENZO DEL JUEGO";
				Escribir " 1 - Los jugadores eligen quien inicia el ataque";
				Escribir " 2 - Cada jugador coloca sus barcos horizontal o verticalmente (no en diagonal) ";
				Escribir " 3 - Cuando hayan sido colocados todos los barcos anuncian LISTO, a partir de ese momento no se pueden cambiar los barcos de posición.";
				Escribir "";
				Escribir " COMIENZA EL COMBATE";
				Escribir " 1 - El jugador que primero dijo LISTO, abre el fuego ingresando las coordenadas (compuesta por una letra y un numero) tratando de alcanzar un barco enemigo, luego lo hará su ";
				Escribir"      contrincante y así sucesivamente.";
				Escribir " 2 - El disparo es anunciado con una Letra y un Número que corresponden a un agujero del tablero enemigo localizado por la convergencia entre la Letra y el Número de su base.";
			    Escribir " 3 - El atacado deberá informar su situación: TOCADO, si el disparo fue certero ó AGUA, si el disparo fue errado y el tipo de barco alcanzado (Portaaviones, Submarinos, etc).";
				Escribir "";
				Escribir " MARCACIÓN";
				Escribir " 1 - Después que el jugador haya efectuado el disparo y sepa si ha acertado o no, podrá ir visualizando los aciertos, ésto le servirá de referencia y evitará repetir los disparos";
				Escribir "     a los mismos puntos.";
				Escribir " 2 - No se marcan los tiros fallidos del adversario pero sí los impactos, con anotadores amarillos en los agujeros correspondientes del barco(aqui que podria escribir?).";
				Escribir "";				
				Escribir " HUNDIR LOS BARCOS";
				Escribir " 1 - Cuando un barco haya recibido tantos impactos como agujeros tiene, se considera HUNDIDO y deberá ser retirado de la base debiendo ser anunciado al oponente.";
				Escribir " 2 - Los jugadores deben ser honestos anunciando los impactos recibidos, en caso de duda o posible equivocación se solicita tregua y se revisan los disparos realizados hasta el momento.";
								
				Escribir "     Será ganador el primer jugador que hunda los cuatro barcos de su oponente.";
				Escribir "";
                Escribir "                                                                                       ¡A JUGAR!";
			3:
				Escribir "Creditos";
			4:
				Escribir "Salir del menu";
			De Otro Modo:
				Escribir "se equivocó de opcion de menu.";
		FinSegun
		Escribir "";
FinProceso

//SubProceso llenarMatriz(matriz por referencia)
	//definir i,j como enteros;
	//Para i<-0 Hasta 3 Hacer
		//Para j<-0 Hasta 3 Hacer
			//Escribir sin saltar "digite un numero[",i,"][",j,"]:";
			//Leer matriz[i,j];
			//si opcion = 2 Entonces
				//escribir "las reglas del juego son:";
			//SiNo
				//Escribir "se equivocó de opcion de menu.";
			//FinSi
		//FinPara
	//FinPara
//FinSubProceso
