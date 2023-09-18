Funcion generar(num por referencia, x) 
	Repetir 
		num <- azar(10)
	Hasta Que num <> x 
FinFuncion

Funcion saludo
	Escribir "Desarrollado por: *** JUAN CAMILO MORALES LOPEZ y JOSE ARMANDO BENAVIDES CANCHALA ***"
	
FinFuncion
Algoritmo Picas_y_Fijas_1
	saludo
	Escribir "hola este es el juego de picas y fijas"
	Definir numauto,jugador,posicion,oportunidades,num,contador,verificar,picas,fijas,mensaje,vector Como Entero
	Dimension numauto[4]
	Dimension jugador[4]
	posicion <- 1
	verificar <- 0
	oportunidades <- 12
	picas <- 0
	fijas <- 0
    generar(num,x)
	Repetir
		generar(num,x)
		Para contador<-1 Hasta 4 Hacer
			Si numauto[contador]=num Entonces
				verificar <- 1
			FinSi
		FinPara
		Si verificar=0 Entonces
			numauto[posicion] <- num
			posicion <- posicion+1
		SiNo
			verificar <- 0
		FinSi
	Hasta Que posicion>4
	Para posicion<-1 Hasta 4 Hacer
	FinPara
	Repetir
		Repetir
			Escribir 'Por Favor Digita Un Numero de 4 Cifras, cada una de ellas Diferente, Te quedan ',oportunidades,' Intentos'
			Leer num
			picas <- 0
			Fijas <- 0
			jugador[1] <- trunc(num/1000)
			jugador[2] <- trunc((num MOD 1000)/100)
			jugador[3] <- trunc(((num MOD 1000) MOD 100)/10)
			jugador[4] <- ((num MOD 1000) MOD 100) MOD 10
		Hasta Que jugador[1]<>jugador[2] Y jugador[1]<>jugador[3] Y jugador[1]<>jugador[4] Y jugador[2]<>jugador[3] Y jugador[2]<>jugador[4] Y jugador[3]<>jugador[4] Y num>1000 Y num<9999
		Para posicion<-1 Hasta 4 Hacer
			Escribir jugador[posicion]
		FinPara
		Para contador<-1 Hasta 4 Hacer
			Para posicion<-1 Hasta 4 Hacer
				Si jugador[contador]=numauto[posicion] Entonces
					Si contador=posicion Entonces
						fijas <- fijas+1
					SiNo
						picas <- picas+1
					FinSi
				FinSi
			FinPara
		FinPara
		Escribir 'Encontro: ',picas,'  Picas  y  ',Fijas,'  Fijas'
		oportunidades <- oportunidades-1
	Hasta Que oportunidades=0 O Fijas=4
	mensaje<- 12-oportunidades	
	Si fijas=4 Entonces
		Segun mensaje Hacer
			1,2,3,4:
				Escribir 'Bien, Excelente'
			5,6,7:
				escribir 'Bien, Aceptable'
			8,9,10,11,12:
				escribir 'Bien, Regular'
		Fin Segun
	SiNo
		Escribir 'Mal, este juego como que no es para ti'
	FinSi
	saludo
FinAlgoritmo