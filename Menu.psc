// Funciones de usuario para el Algoritmo Menu
// Presenta el menu en la pantalla
Funcion opc = presentarMenu(titulo,opciones,lim) 
	Escribir titulo
	Escribir ""
	Para pos=1 Hasta lim  Hacer
		Escribir opciones[pos]
	Fin Para
	Escribir "Elija opcion[1...",lim,"]: "
	Leer opc
FinFuncion
//La suma de dos numeros 
Funcion Suma_Dos_Numeros = suma_(num1,num2)
	suma=num1+num2
	escribir "la suma de los dos numeros es " suma
FinFuncion
// Calcula el proceso matematico de dos numeros dada su operacion
Funcion calculadora(operacion,num1,num2)
	Si operacion = "+" Entonces
		Escribir num1,"+",num2,"=",num1+num2
	SiNo
		Si operacion = "-" Entonces
			Escribir num1,"-",num2,"=",num1-num2
		SiNo
			Si operacion = "*" Entonces
				Escribir num1,"*",num2,"=",num1*num2
			SiNo
				Si operacion = "/" Entonces
					Escribir num1,"/",num2,"=",num1/num2
				SiNo
					Si operacion = "%" Entonces
						Escribir num1,"%",num2,"=",num1%num2
					SiNo
						Si operacion = "^" Entonces
							Escribir num1,"^",num2,"=",num1^num2
						SiNo
							Escribir "Operacion Incorrecta, intentelo de nuevo"
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	Fin Si
FinFuncion
// dado 2 numeros si el primero es  >= al segundo sumarlo sino restarlo
Funcion nevaluo=nmayor(num1,num2)//4
	nevaluo=0
	Si num1>=num2 Entonces
		nevaluo=1
	SiNo
		nevaluo=0
	Fin Si
FinFuncion

// La despensa "El Baraton", a todas las ventas que pasen de $100,
//se les aplicará un  descuento del 10%, a  todo los demás se les aplicará sólo el 5% 
// luego del recargo del iva del 12%
funcion Descuentos = descuento(iva,ventas)//6
	Si ventas>100 Entonces
		iva=ventas*0.12
		stotal=ventas+iva    
		vpagar=stotal*0.90
		Escribir "El valor a pagar tendra un descuento del 10% y sera: ",vpagar
	SiNo
		iva=ventas*0.12
		stotal=ventas+iva
		vpagar=stotal*0.95
		Escribir "El valor a pagar tendra un descuento del 5% y sera: ",vpagar
	Fin Si
FinFuncion                                                            //7

Funcion  Pago_de_sueldo <- pago ( horas,vhora,hextra,hcien,vtotal,desc,nom )
	sueldo=horas*vhora
	sobret=(hextra*1.5+hcien*2)
	ingreso=sueldo+sobret
	desc=(ingreso*9.35)/100
	nrecibir=ingreso-desc
	Escribir " "
	Escribir "El rol de pago del Sr. ",nom
	Escribir " "
	Escribir "Sueldo por horas trabajadas $ ",sueldo
	Escribir "Sobretiempo de horas al 50% y al 100%: $ ",sobret
	Escribir "Total de ingreso: $ ",ingreso
	Escribir "Descuento aplicado - IEES: $ ",desc
	Escribir "Neto a recibir: $ ",nrecibir
Fin Funcion
funcion Nota_de_alumno = nota(primerp,segundop)//8
	promedio=primerp+segundop
	si promedio>=70 Entonces
		Escribir "el estudiante esta aprobado con" " " promedio
	SiNo
		si promedio<70 Entonces
			escribir "el estudiante no aprobo con el promedio de" " " promedio
		FinSi
	FinSi
FinFuncion
Funcion positivo_negativo <- numposneg ( num )//9
	leer num
	Si num>0 Entonces
		Escribir "El numero: ",num, " Es positivo"
	SiNo
		Si num<0 Entonces
			Escribir "El numero: ",num, " Es Negativo"
		SiNo
			Escribir "El numero: ",num, " Es Neutro"
		FinSi
	FinSi
Fin Funcion
Funcion Par_impar <- numparimpar ( num )//10
	Si (num MOD 2=0) Entonces
		Escribir numero,'el numero es Par'
	SiNo
		Escribir numero,'el numero es impar'
	FinSi
Fin Funcion
Funcion multiplos_entre_dos_numeros <- multiplosn ( num1,num2 )//11
	si num1 mod num2 = 0 Entonces
		escribir "el numero " " " num1 " "   " es multiplo del numero" " "  num2
	sino
		Escribir "el numero" " " num1 " "   "no es multiplo del numero" " "  num2 
	FinSi
Fin Funcion
Funcion Mayor_menor_secuencia <- secmaymen ( ct )//12
	i=1
	mientras i <= ct Hacer
		escribir " ingrese el numero ", i 
		leer n
		si i = 1 Entonces
			may=n
			men=n
		SiNo
			si n> may Entonces
				may=n
			FinSi
			si n<men Entonces
				men=n
			FinSi
		FinSi
		i=i+1
	FinMientras
	Escribir " El numero mayor es " " " may
	Escribir " Eel numero menor es " " " men
Fin Funcion
Funcion numerospositivos <- secue ( sec,num,cn )//13
	Mientras cont<sec Hacer
		Escribir "ingrese un numero" Sin Saltar
		leer num
		Si num>0 Entonces
			cont=cont+1 ; cn=cn+1
		SiNo
			cont=cont+1
		Fin Si
	Fin Mientras
	Escribir " la cantidad de numeros positivos es:  ",cn
Fin Funcion
Funcion multiplo_5 <- multplos ( sec,n,s )//14
	c=1
	Para i=c Hasta sec Con Paso 1 Hacer
		Escribir "ingrese un numero" Sin Saltar
		leer n
		Si n % 5 =0 Entonces
			c=c+1;g=g+1;s=s+n
		SiNo
			c=c+1
		Fin Si
	Fin Para
	Escribir " la cantidad de numeros de multiplo 5 es :  ",g ; Escribir "la suma es ",s
Fin Funcion
Funcion numpares <- secuencias ( i,n )//15
	Para i<-2 Hasta n Con Paso 2 Hacer
		Escribir i
	Fin Para
Fin Funcion
Funcion negativos <- n_negat ( sec,cant,sum,prom )//16
	Para d<-1 Hasta sec Con Paso 1 Hacer
		Escribir "ingrese un numero" Sin Saltar; Leer num
		Si num<0 Entonces
			Escribir num
			cant=cant+1; sum=sum+num ; prom=sum/sec
		Fin Si
	Fin Para
	Escribir " cantidad de numeros            suma                promedio"
	Escribir "        ",cant,  "                         ",      sum,"               ",         prom
Fin Funcion
Funcion promedios <- prome ( sec,num )//17
	c=0;x=0 
	Mientras c<sec Hacer
		Escribir " escriba un numero" Sin Saltar; Leer num
		Si num>=100 y num<=500 Entonces
			c=c+1; x=x+num ;nc=nc+1;prom=x/nc
		SiNo
			c=c+1
		Fin Si
	Fin Mientras
	Escribir "el promedio de los numeros es :" prom
Fin Funcion
Funcion posit_neg <- npos_neg ( n )//18
	n=-1
	Mientras n<0  Hacer
		Escribir "ingrese un numero" Sin Saltar; leer n
	Fin Mientras
Fin Funcion
Funcion exponente <- elevado ( b,e,expo )//19
	expo=b^e
	Escribir "el resultado es :",expo	
Fin Funcion
Funcion factorial <- numfac ( n,fac )//20
	fac=1
	Para f=1 Hasta n Con Paso 1 Hacer
		fac=fac*f
	Fin Para
	escribir "el factorial del numero ",n," es: ",fac; Escribir ""
Fin Funcion

Funcion Numeros_En_Digitos <- digitos ( n )//1 sin vectores
	Mientras n>0 Hacer
        n=trunc(n/10)
        contador=contador+1
    Fin Mientras
    Escribir "el numero que escribio tiene ",contador," ","digitos"
Fin Funcion
Funcion nbinario <- binario ( num )// 2 sin vectores
	Mientras num>0 Hacer
		c=num mod 10
		v=trunc	(num/10)
		num=v
		ce= 2^t
		m=c*ce
		acu=acu+m
		t=t+1
	Fin Mientras
	Escribir "El numero en base 10 es:", acu
Fin Funcion
Funcion Bin_Oc_Hex <- transformador ( num, base )//3 sin vectores
	Segun base Hacer
		Caso "B":
			si num=0 Entonces
				conv=0
			SiNo
				mientras num>0 Hacer
					mo= num%2
					num=trunc(num/2)
					si mo>0 Entonces
						conv=1
					SiNo
						conv=0
					FinSi
					Escribir "bit ",x,":  ",conv
					x=x+1
				FinMientras
				
			FinSi
		Caso "O":
			si num=0 Entonces
				conv=0
			SiNo
				Repetir
					mo= num%8
					conv=conv+10^x*mo
					x=x+1
					num=trunc(num/8)
			    Hasta Que num<8
				b=conv+10^x*num
				Escribir "Su transformacion al sistema Octal es: ",b
			FinSi
		caso "H":	
			x=1
			q=""
			Mientras x>0 Hacer
				x=trunc(num/16)
				Segun num%16 hacer
					Caso 10:
						
						q="A"+q
					Caso 11:
						
						q="B"+q
					Caso 12:
						
						q="C"+q
				    caso 13:
						
						q="D"+q
					Caso 14:
						q="E"+q
					Caso 15:
						q="F"+q
					De Otro Modo:
						q=ConvertirATexto(num%16)+q
				FinSegun
				num=x
				Escribir "Su transformacion al sistema Hexadecimal es: ",q
			FinMientras
	FinSegun
Fin Funcion
Funcion SERIE_FIBONIACCI <- serie ( num )//4 sin vectores
	a=0;b=1
	Para i=1 hasta num hacer 
		Escribir a
		c=a+b
		a=b
		b=c
	FinPara
Fin Funcion
Funcion divisores <- numdivisores ( n,i) //5 sin vectores
	Para i<-1 Hasta n Con Paso 1 Hacer
		Si n mod i=0 Entonces
			Escribir i
		Fin Si
	Fin Para
Fin Funcion
Funcion perfecto <- numperfecto ( n,c )//6 sin vectores
	c=1
	Mientras c<n Hacer
		Si n % c=0 Entonces
			;sum=sum+c
		Fin Si
		c=c+1
	Fin Mientras
Fin Funcion
Funcion primos <- numprim ( n )//7 sin vectores
	Para x<-1 Hasta n Con Paso 1 Hacer
		Si n % x=0 Entonces
			c=c+1
		Fin Si
	Fin Para
	Si c=2 Entonces
		Escribir "el numero ",n," es primo"
	SiNo
		Escribir "el numero ",n," no es primo"
	Fin Si
Fin Funcion

Funcion acu <- divisor(num)	//8 sin vectores	
	Definir acu Como real	
	acu=0
	Para c<-1 Hasta num-1 Hacer
		Si (num mod c)=0 Entonces
			acu=acu+c
		FinSi
	FinPara
FinFuncion

// Verifica si un numero es primo o no y devueve 1 si es primo y 0 si no es
Funcion bandera=primo(num)
	Definir r,c,bandera Como Entero
	bandera=1;c=2
	// recorro mientras sea primo y c no lleaga al numero
	Mientras bandera=1 y c < num Hacer
		r=num MOD c
		Si r=0 Entonces
			bandera=0
		SiNo
			c=c+1
		Fin Si
	Fin Mientras
	
FinFuncion
// Recorrer y presentar cadena caracter por caracter
Funcion presentarCadena(texto)
	Definir pos,lon Como Entero
    //Escribir Subcadena(texto,2,3)
	lon = Longitud(texto)
	Para pos=1 Hasta lon  Hacer
		Escribir Subcadena(texto,pos,pos)
	Fin Para
FinFuncion
// recorre y cadena y cuenta las vocales de dicha cadena
Funcion vocales(texto)
	Definir pos,lon Como Entero
	Definir reves Como Caracter;reves=" ";cv=0
    //Escribir Subcadena(texto,2,3)
	lon = Longitud(texto)
	Para pos=1 Hasta lon  Hacer
		Si Subcadena(texto,pos,pos) = 'a' | Subcadena(texto,pos,pos)='e' | Subcadena(texto,pos,pos)='i' Entonces
			cv = cv +1
		Fin Si
		reves=Subcadena(texto,pos,pos)+reves
	Fin Para
    Escribir "Frase al revez: ",reves,"  No vocales: ",cv
FinFuncion
// Ingresar datos a un arreglo
Funcion ingresarArreglo(vector por referencia,lim)
	Definir num,pos Como Entero
	Para pos<-1 Hasta lim Hacer
		Escribir "Ingrese numero"
		leer num
		vector[pos]=num
	Fin Para
FinFuncion
// Presenta los datos de un arreglo dada una posicion inicial y final
Funcion presentarArreglo(vector,inicio,lim)
	Definir pos Como Entero
	Si lim > 0 Entonces
		Para pos<-inicio Hasta lim Hacer
			Escribir pos,"[",vector[pos],"]"
		Fin Para
	SiNo
		Escribir "Ingrese primero datos al arreglo"
	Fin Si
FinFuncion
// buscac un valor en un arreglo y retorna la posicion si lo encuentra sino retorna -1
Funcion posicion=buscarArreglo(buscado,vector,lim)
	definir pos,encontrado Como Entero
	pos=1;encontrado=0
	mientras encontrado=0 y pos <= lim Hacer
		Si vector[pos]=buscado Entonces
			encontrado=1
		SiNo
			pos = pos + 1
		Fin Si
	Fin Mientras
	Si encontrado=1 Entonces
		posicion=pos
	SiNo
		posicion = -1
	Fin Si
FinFuncion
//1-de una serie me da los numeros primos
Funcion nsprimos<-pserie(nserie,lon)
	Dimension arreglo1(15)
	temporal=nserie
	np=0
	cont=0
	Para k<-1 Hasta lon Hacer
		Mientras temporal>0 Hacer
			digito=temporal mod 10
			temporal=(temporal-digito)/10
			Si primo(digito)=1 Entonces
				cont=cont+1
				arreglo1(15)=ConvertirATexto(digito)
				Escribir "Los numeros primos en la serie son ",arreglo1(15)
			Fin Si
		Fin Mientras
	Fin Para
FinFuncion
//2-promedio de notas mayores a 70
Funcion promedio=pnotas(arreglo,lim)
	promedio=0;suma=0;cont=0
	Para k<-1 Hasta lim Hacer
		Si arreglo[k]>=70 Entonces
			suma=arreglo[k]+suma
			cont=cont+1
		Fin Si
		promedio=suma/cont
	Fin Para
	Escribir "La suma de las calificaciones ingresadas es: ", suma
	Escribir "Las notas ingresadas dan un promedio de: ", promedio
FinFuncion
//3-lee la cadena y la presenta invertida
Funcion presentarcadenainvertida(texto)
	Definir pos,lon Como Entero
	lon = Longitud(texto)
	Para pos=lon Hasta 1 con paso -1 Hacer
		Escribir Subcadena(texto,pos,pos)
	Fin Para
FinFuncion
// 4-cuenta palabras de una cadena
Funcion npalabras(texto)
	Definir pos,lon,cont Como Entero
	cont=0
	lon = Longitud(texto)
	Para pos=1 Hasta lon  Hacer
		Si Subcadena(texto,pos,pos) = " "
			cont = cont +1
		Fin Si
	Fin Para
	cont=cont+1
    Escribir "Frases ingresadas fueron : ",cont
FinFuncion
// Buscar caracter 
Funcion posicion=vbuscado(buscado,frase,lim)
	posicion=0;acu=0
	Para i<-1 hasta lim Hacer
		verificador=Subcadena(frase,i,i)
		//Escribir "--", arreglo(15)
		SI verificador= buscado Entonces
			acu=acu+1
			posicion=i
		FinSi
	FinPara
	SI posicion <> 0 Entonces
		Escribir "Se encontro la frase en la posicion: ",acu,"--",posicion
	SiNo
		posicion=-1
		Escribir " ", posicion
	FinSi
FinFuncion
// Comparar caracteres 
Funcion caracteres_igual=caracteres_iguales(arreglo1,arreglo2,p1,p2)
	arreglo1=p1; arreglo2=p2
	si arreglo1=arreglo2 Entonces
		Escribir "los caracteres son Iguales"
	SiNo
		Escribir "los caracteres son Diferentes"
	FinSi
FinFuncion
//funcion palindroma
funcion Palindromo = npalindromo(lim,palabra)
	i=1
	Mientras i < lim	& Minusculas(Subcadena(palabra, i, i)) = Minusculas(Subcadena(palabra,lim,lim)) Hacer
		i=i+1
		lim=lim-1
	FinMientras
	Escribir ""
	Si i>=lim Entonces
		Escribir " La palabra ", palabra," es palíndroma."
	Sino
		Escribir "La palabra ingresada no es palindroma"
	FinSi
FinFuncion

// Algoritmo principal
Algoritmo Menu
	Definir pos,resp,limite,dato Como Entero
	Definir opcion,opc1,opc2,opc3,frase Como Caracter
	Dimension menuPrincipal[4],menuNumeros[21],menuRazonamiento[11],menuCadenaVectores[16]
    Dimension arreglo[100]	
	limite=0
	// ***** MENU PRINCIPAL ******
	menuPrincipal[1] = "1)Ejercicios Basicos"
	menuPrincipal[2] = "2)Ejercicios Razonamiento"
	menuPrincipal[3] = "3)Ejercicios Cadenas y Vectores"
	menuPrincipal[4] = "4)Salir"
	
	// ***** EJERCICIOS BASICOS ******
	// dado 2 numeros presentar la suma
	menuNumeros[1] = "1)Sumar dos numeros"
	// dado 2 numeros si el primero es  >= al segundo sumarlo sino restarlo
	menuNumeros[2] = "2)Sumar o restar"
	// ingrese 2 numeros con una operacion matematica("+,-,*,/,%,^") 
	// realizar y presentar la respuesta de la operacion matematica
	menuNumeros[3] = "3)Caculadora"
	// presentar el mayor de 2 numeros ingresados
	menuNumeros[4] = "4)Mayor de dos numeros"
	// presentar el menor de 3 numeros ingresados
	menuNumeros[5] = "5)Mayor de tres numeros"
	// La despensa "El Baraton", a todas las ventas que pasen de $100,
	//se les aplicará un  descuento del 10%, a  todo los demás se les aplicará sólo el 5% 
	// luego del recargo del iva del 12%
	menuNumeros[6] = "6)Comprar productos"
	// Ingresar el nombre,horas trabajadas, valor hora, horas50 y horas100 de sobretiempo
	// se pide calcular el rol del pago del trabajor dado los siguientes calculos.
	// sueldo del trabajador(horasTrajabadas por el valorHora)
	// el sobretiempo=(horas50*1.5+horas100*2)*Valor
	// total ingreos = sueldo+sobretiempo
	// descuento= totalingresos*9.35%
	// liquido= totalingresos - descuento
	menuNumeros[7] = "7)Pago de Sueldos"
	// dada dos notas calcular el promedio y presentar el mensaja "Aproboado" si el promedio
	// mayor 70 y reprobado si es menor que 70
	menuNumeros[8] = "9)Notas de Alumnos"
	// dado un numero indicar si es positivo o negativo
	menuNumeros[9] = "9)Positivo/Negativo"
	// dado un numero indicar si es par o impar
	menuNumeros[10] = "10)Par e Impar"
	// dado dos nmeros indicar si el numero1 es multiplo del numero2
	menuNumeros[11] = "11)Multiplo de cualquier Numero"
	// dada una secuencia de numeros presentar el mayor y el menor de esa esa secuencia
	menuNumeros[12] = "12)El Mayor y Menor de una secuencia de numeros"
	// dada una secuencia de numeros presentar cuantos son numeros positivos
	menuNumeros[13] = "13)Positivos de una secuencia de numeros"
	// dada una serie d enumeros presntar la suma de lo numeros multiplos de 5
	menuNumeros[14] = "14)Suma de los multiplos de cinco de una serie de numeros"
	// presentar los numeros pares desde 2 hasta N
	menuNumeros[15] = "15)Generar y presentar los Numeros pares del 2 a N"
	// dada una serie de numeros presente el numero siempre y cuando sea negativo
	// y antes de finalizar presente la cantidad, la suma y el promedio de dichos numeros negativos
	menuNumeros[16] = "16)Cantidad, Suma y Promedio de numeros negativos de una serie"
	// dado una serie de numeros presentar el promedio de los numeros que sean >= 100 and <=500 
	menuNumeros[17] = "17)Serie promedio de rango de numeros"
	// Ingrese un numero si este es postivo finalice sino vuelva a ingresarlo
	menuNumeros[18] = "18)Validar que un numero sea positivo"
	// dado dos numeros base y exponente. calcular la base elevada al exponente 
	menuNumeros[19] = "19)Base y exponente"
	// dada una serie de numeros calcular los factorles de dichos numero la serie termina
	// cuando un numero de la serie sea igual a cero.
	menuNumeros[20] = "20)Serie Factoriales"
	menuNumeros[21] = "21)Salir"
	
	// ******EJERCICIOS DE RAZONAMIENTO SIN USAR CADENAS Y VECTORES*******
	// contar los digitos de cualquier numero: ej: 342 = 3 digitos
	menuRazonamiento[1] = "1)Cuantos Digitos tiene un Numero"
	// ejemplo: binario= 1111101000  ==> 1000 (decimal) Respuesta = 3E8 (hexadecimal)
	menuRazonamiento[2] = "2)Covertir de Base 2 a Base 10"
	// ejemplo: binario= 1100100  ==> 100 (decimal) => 
	menuRazonamiento[3] = "3)Convertir de Base 2 a Base 16 pasando por Base 10"
	// ejemplo Si n=8 => La serie de fibonacci es = 0 1 1 2 3 5 8 13
	menuRazonamiento[4] = "4)Serie de fibonacci hasta N"
	// ejemplo si numero=10 ==> resp= 1,2,5
	menuRazonamiento[5] = "5)Divisores de un Numero"
	// cuando los divisores de un numero es igual al numero se dice que ese numero es perfecto
	// si numero es 6 los divisores son 1,2,3 sumados igual a 6 es igual al numero ==> es perfecto
	menuRazonamiento[6] = "6)Numero Perfecto"
	// un numero es primo cuando no tiene divisores excepto el 1 y el propio numero
	// ejemplo 5 no tiene divsores es "primo"  9 tiene como divisor al 3 por tanto no es "primo"
	menuRazonamiento[7] = "7)Numero Primo"
	// dos numeros son amigos si la suma de los divisores del primer numero es = a la suma de los
	// divisores del segundo numero Eje: numero=6 (1+2+3)=6 numero 25(1+5)=6 ==> 6=6 son amigos 
	menuRazonamiento[8] = "8)Verificar si dos numeros son Amigos"
	// dos numeros son primos gemelos si ambos numeros son primos en valor absoluto y la resta de
	// los 2 numeros es == 2 eje: 11 y 13 abs(11-13)==2
	menuRazonamiento[9] = "9)Verificar si dos Numeros son Primos Gemelos"
	// por cada numero de una serie verifique si es primo, si es primo contarlo
	menuRazonamiento[10] = "10)De una serie de numeros cuantos son Primos"
	menuRazonamiento[11] = "11)Salir"
	
	// ****** EJERCICIOS DE CADENAS Y VECTORES *******
	// dado n valores ingresarlos a un arreglo
	menuCadenaVectores[1] = "1)llenar un arreglo de numeros"
	// recorrer un arreglo y presentarlo uno por uno
	menuCadenaVectores[2] = "2)Presentar los elementos de un arreglo"
	// buscar el dato y presentar la posicion en que se encuntra el dato en el arreglo
	menuCadenaVectores[3] = "3)Buscar un dato en un arreglo"
	// Presentar el mayor de los datos de un arreglo
	menuCadenaVectores[4] = "4)Elemento Mayor de un arreglo"
	// Dado un arreglo copie los datos en otro de atras para delante 
	menuCadenaVectores[5] = "5)Copiar los datos de un arreglo en otro invertido"
	// Dado los arreglos1 y arreglos 2 sumarlos valor por valor del arreglo1 y arreglo2
	// y asigmarlo en el arreglo3(los tres arreglos deben tener la misma longitud)
	menuCadenaVectores[6] = "6)Dados los arreglos arreglo1[] y arreglo2[] Sumarlos en al arreglo Suma[]"
	// de una serie de numeros solo guardar en un arreglo los nymeros primos
	menuCadenaVectores[7] = "7)Dado N numeros guardar en un arreglo los numeros primos"
	// dadas las notas guardades en un arreglos obtener el promedio de las notas >= 70
	menuCadenaVectores[8] = "8)Dadas los datos de un arreglo obtener el promedio de las notas >=> 70"
	// presentar caracter por caracter de una cadena
	menuCadenaVectores[9] = "9)Dada una cadena presentarla caracter por caracter"
	// presentar  una cadena al reves
	menuCadenaVectores[10] = "10)Dada una cadena presentarla invertida"
	// contar las vocales de jque tiene una cadena cualquiera
	menuCadenaVectores[11] = "11)Dada una cadena indicar cuantos vocales tiene"
	// contar las palabras de una cadena
	menuCadenaVectores[12] = "12)Dada una cadena indicar cuantos palabras tiene"
	// buscar si un caracteer ingresado se encuentra en una cadena si es asi presentarMenu
	// la posicion en que se encuntra ese caracter en la cedena caso contrario presentar -1
	menuCadenaVectores[13] = "13)presentar la posicion de un caracter buscado dentro de una cadena"
	// comparar 2 cadenas csracter por catacter e indicar si son iguales o no
	menuCadenaVectores[14] = "14)Dadas dos cadenas indicar si son iguales caracter por caracter"
	// una cadena es palaindorma si se lee de la misma forma de izquierda a derecha 
	// ejemplo "ana"
	menuCadenaVectores[15] = "15)Indicar si una cadena es palindroma"
	menuCadenaVectores[16] = "16)Salir"
	// cuando se escoja la opcion 4 termina el programa
	opcion=''
	Mientras opcion <> "4" Hacer
		Borrar Pantalla
		opcion = presentarMenu("********** M E N U   P R I N C I P A L **********",menuPrincipal,4)
		Borrar Pantalla
		Segun opcion Hacer
			"1":
				opc1=""
				Mientras opc1<>"21" Hacer
					opc1= presentarMenu("********** M E N U  E J E R C I C I O S  B A S I C O S **********",menuNumeros,21)
					Borrar Pantalla
					Segun opc1 Hacer
						"1":
							// dado n valores ingresarlos a un arreglo
							Escribir "Sumar dos numeros"; Escribir " "
							Escribir "ingrese un numero " Sin Saltar; Leer num1 
							Escribir "ingrese un numero " Sin Saltar; Leer num2
							suma=num1+num2
							Escribir "Sumar de los Dos Numeros " suma
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
						"2":
							Escribir "Sumar o restar"; Escribir "  "
							Escribir "Ingrese dos numeros"
							leer	num1,num2
							resp=nmayor(num1,num2)
							Si resp=1 Entonces
								suma=num1+num2
								Escribir "suma ", suma
							SiNo
								resta=num1-num2
								Escribir "resta ",resta
							Fin Si
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla	
						"3":
							Escribir "Calculadora"
							Escribir "Ingrese Operacion[+,-,*,/,%,^]: " Sin Saltar
							Leer ope
							Escribir "Ingrese Numero1: " Sin Saltar
							Leer num1
							Escribir "Ingrese Numero2: " Sin Saltar
							Leer num2
							calculadora(ope,num1,num2)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 2 Segundos
						"4": 
							Escribir "Mayor de dos numeros"; Escribir "  "
							Escribir "Ingrese dos numeros"
							leer	num1,num2
							resp=nmayor(num1,num2)
							Si resp=1 Entonces
								Escribir "El mayor de los numeros ingresados es: ",num1
							SiNo
								Escribir "El mayor de los numeros ingresados es: ",num2
							Fin Si
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
						"6":
							Escribir "Comprar productos"
							Escribir "Ingrese la venta"
							Leer ventas
							Descuentos = descuento(iva,ventas)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 6 Segundos
							Borrar Pantalla
						"7":
							Escribir "Pago de Sueldos"; Escribir  " "
							Definir horas,vhora,hextra,hcien,vtotal,desc Como Real
							Definir nom Como caracter	
							Escribir "ingrese el nombre completo del empleado" Sin Saltar; Leer nom
							Escribir "ingrese el numero de horas trabajadas" Sin Saltar;leer horas
							Escribir "ingrese el valor de horas trabajadas" Sin Saltar;leer vhora
							Escribir "ingrese el numeros de horas trabajadas al 50%" Sin Saltar; Leer hextra
							Escribir "ingrese el numeros de horas trabajadas al 100%" Sin Saltar; Leer hcien
							Pago_de_sueldo <- pago ( horas,vhora,hextra,hcien,vtotal,desc,nom)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 4 Segundos
							Borrar Pantalla
							
						"8":
							Escribir "Notas de Alumnos"; Escribir "  "
							Definir primerp,segundop,promedio Como Entero
							escribir "ingrese la nota del primer parcial"
							leer primerp
							Escribir "ingrese la nota del segundo parcial"
							Leer segundop
							Nota_de_alumno=nota(primerp,segundop)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 4 Segundos
							Borrar Pantalla
						"9":
							Escribir "Positivo/Negativo"; Escribir "  "
							Definir num Como Entero
							Escribir "Digita un numero: "
							positivo_negativo <- numposneg ( num )
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 4 Segundos
							Borrar Pantalla
						"10":
							Escribir "Par e Impar"; Escribir "  "
							Escribir "escriba un numero para determinar si es par o imprar"
							leer num
							Par_impar <- numparimpar ( num )
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 4 Segundos
							Borrar Pantalla
						"11":
							Escribir "Multiplo de cualquier Numero"; Escribir "  "
							Definir  num1,num2 Como Entero
							Escribir "ingrese su primer numero"
							Leer num1
							Escribir "ingrese su segundo numero"
							leer num2
							multiplos_entre_dos_numeros <- multiplosn ( num1,num2 )
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 4 Segundos
							Borrar Pantalla
						"12":
							Escribir "El Mayor y Menor de una secuencia de numeros";  Escribir "  "
							definir i,n,ct,may,men Como Entero
							may=0
							men=0
							Escribir "ingrese la cantidad de numeros que quiere en su secuencia"
							leer ct
							Mayor_menor_secuencia <- secmaymen ( ct )
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 4 Segundos
							Borrar Pantalla
						"13":
							Escribir "Positivos de una secuencia de numeros"; Escribir "  "
							Escribir "ingrese el numero de la secuencia"; sin saltar
							leer sec
							secuencia=secue ( sec,num,cn )
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 4 Segundos
							Borrar Pantalla
						"14":
							Escribir "Suma de los multiplos de cinco de una serie de numeros"; Escribir " "
							Escribir "ingrese la secuencia" Sin Saltar
							Leer sec
							multiplo_5 <- multplos ( sec,n,s )
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 4 Segundos
							Borrar Pantalla
						"15":
							Escribir "Generar y presentar los Numeros pares del 2 a N" ; Escribir "  "
							Escribir " ingrese un numero" Sin Saltar; leer n
							numpares <- secuencias ( i,n)
							Esperar 5 Segundos
							Borrar Pantalla
							
						"16":
							Escribir "Cantidad, Suma y Promedio de numeros negativos de una serie"; Escribir " "
							Escribir "ingrese el numero de secuencia" Sin Saltar; Leer sec
							negativos <- n_negat ( sec,cant,sum,prom )
							Esperar 5 Segundos
							Borrar Pantalla
						"17":
							Escribir "Serie promedio de rango de numeros"; Escribir " "
							Escribir "ingrese numero de secuencia" Sin Saltar; leer sec
							promedios <- prome ( sec,num )
							Escribir "Regresando Al Menu Principal..."
							Esperar 4 Segundos
							Borrar Pantalla
						"18":
							Escribir "Validar que un numero sea positivo"; Escribir " "
							posit_neg <- npos_neg ( n )
							Escribir "[EL NUMERO INGRESADO ES POSITIVO]"; Escribir "fin del proceso"
							esperar 4 Segundos
							Borrar Pantalla
						"19":
							Escribir "Base y exponente"; Escribir " "
							Escribir "ingrese el numero de la base" sin saltar ; leer b
							Escribir "ingrese un numero al exponente"Sin Saltar; leer e
							exponente <- elevado ( b,e,expo )
							esperar 4 Segundos
							Borrar Pantalla
						"20":
							Escribir "Serie Factoriales"; Escribir " "
							n=1
							Mientras n<>0 Hacer
								Escribir "ingrese un numero a calcular" Sin Saltar; Leer n
								Si n<>0 Entonces
									factorial <- numfac ( n,fac )
								SiNo
									Escribir "se ah ingresado un 0 ,PROCESO FINALIZADO"
								Fin Si
							Fin Mientras
						"21":
							Escribir "Regresando Al Menu Principal..."
							Esperar 3 Segundos
							
						De Otro Modo:
							Escribir "Opcion Incorrecta"
							Esperar 3 Segundos
					Fin Segun
				Fin Mientras
			"2":
				opc2=""
				Mientras opc2<>"11" Hacer
					opc2= presentarMenu("********** M E N U  E J E R C I C I O S  D E  RAZONAMIENTO **********",menuRazonamiento,11)
					Borrar Pantalla
					Segun opc2 Hacer
						"1":
							Escribir "Cantidad de Digitos de un Numero"; Escribir "  "
							definir n,contador Como Entero
							Escribir "escriba un numero"
							Leer n
							Numeros_En_Digitos <- digitos ( n )
							Esperar 4 Segundos
							Borrar Pantalla
						"2":
							Escribir "Covertir de Base 2 a Base 10";  Escribir "  "
							Escribir "Ingrese un numero binario"Sin Saltar; Leer num
							t=0;acu=0;v=0;r=0
							nbinario <- binario ( num )
							Esperar 4 Segundos
							Borrar Pantalla
						"3":
							Escribir "Convertir de Base 2 a Base 16 pasando por Base 10"; Escribir " "
							Definir num,mo, x, conv Como Real
							Definir base,q Como Caracter
							Escribir "ingrese el numero a transformar"
							Leer num
							Escribir "escoja la base a la que desea convertir el nunero (B=binario/O=octal/H=hexadecimal)"
							Leer base
							Bin_Oc_Hex <- transformador ( num, base )
							Esperar 4 Segundos
							Borrar Pantalla
						"4":
							Escribir "Serie de fibonacci hasta N"; Escribir "  "
							Escribir "ingrese un numero por favor"
							leer num
							SERIE_FIBONIACCI <- serie ( num )
							Esperar 4 Segundos
							Borrar Pantalla
						"5":
							Escribir "Divisores de un Numero"; Escribir " "
							Escribir "ingrese un numero" Sin Saltar; leer n
							divisores <- numdivisores( n,i )
							Esperar 4 Segundos
							Borrar Pantalla
						"6":
							Escribir "[Numero Perfecto]";Escribir " "
							Escribir "ingrese un numero"
							leer n
							perfecto <- numperfecto ( n,c )
							Si sum=n Entonces
								Escribir "el numero  ",n,"  es perfecto"
							SiNo
								Escribir "el numero  ",n,"  no es perfecto"
							Fin Si
							Esperar 4 Segundos
							Borrar Pantalla
						"7":
							Escribir "Ejercicio Numero Primo"; Escribir "  "
			                leer n
							primos <- numprim ( n )
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
							
						"8":
							Escribir "Verificar si dos numeros son Amigos" ; Escribir " "
							Definir num1,num2,s1,s2,c Como Entero
							Escribir " Ingrese dos numeros"
							Leer num1,num2
							si divisor(num1)=num2 Y divisor(num2)=num1 Entonces
								Escribir " Los numeros ",num1, " y ",num2," son amigos"
							siNo
								Escribir " Los numeros ",num1, " y ",num2," no son amigos"
							Fin Si
							Esperar 3 Segundos
							Borrar Pantalla
							
						"9":
							Escribir "Ejercicio Primos Gemelos"; Escribir "  "
							Escribir "Ingrese Numero1: " Sin Saltar
							Leer num1
							Escribir "Ingrese Numero2: " Sin Saltar
							Leer num2
							Si primo(num1)=1 y primo(num2)=1 y abs(num1-num2)=2 Entonces
								Escribir num1," y ",num2," Son Primos Gemelos"
							SiNo
								Escribir num1," y ",num2," No Son Primos Gemelos"
							Fin Si
							resp=primo(num)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 2 Segundos
						"11":
							Escribir "Regresando Al Menu Principal..."
							Esperar 1 Segundos
							
						De Otro Modo:
							Escribir "Opcion Incorrecta"
							Esperar 3 Segundos
					Fin Segun
				Fin Mientras
			"3":
				opc3=""
				Mientras opc3<>"16" Hacer
					opc3= presentarMenu("********** M E N U  E J E R C I C I O S  C A D E N A S  Y  V E C T O R E S **********",menuCadenaVectores,16)
					Borrar Pantalla
					Segun opc3 Hacer
						"1":
							Escribir "Ingresar Valores a un Arreglo"
							Escribir "Ingrese cantidad de Elementos:" Sin Saltar
							Leer limite
							ingresarArreglo(arreglo,limite)
							Esperar 3 Segundos
							Borrar Pantalla
						"2":
							Escribir "Presentar los Valores de un Arreglo"
							presentarArreglo(arreglo,1,limite)
							Esperar 3 Segundos	
						"3":
							Escribir "Buscar un dato en un Arreglo"
							presentarArreglo(arreglo,1,limite)
							Escribir "Ingrese el dato a buscar en el arreglo"
							Leer dato
							pos = buscarArreglo(dato,arreglo,limite)
							Si pos > 0 Entonces
								Escribir dato," Se encuentra en la posicion: ",pos, " del arreglo"
							SiNo
								Escribir dato," No se encuentra en el arreglo"
							Fin Si
							Esperar 3 Segundos	
							Borrar Pantalla
						"4":
							Escribir "Ingrese cantidad de Elementos:" Sin Saltar;Leer lim
							Escribir "Ingrese los datos para vector A"
							ingresarArreglo(arreglo,lim)
							mayore=0
							Para n<-1 Hasta lim Hacer
								Si arreglo[n] > mayore Entonces
									mayore = arreglo[n]
								Fin Si
							Fin Para
							Escribir "El numero mayor ingresado es: [", mayore,"]"
							Esperar 3 Segundos
							Borrar Pantalla
						"5":
							Escribir "Ingrese cantidad de Elementos:" Sin Saltar;Leer lim
							Escribir "Ingrese los datos para vector A"
							ingresarArreglo(arreglo,lim)
							Para n<-lim Hasta 1 Con Paso -1 Hacer
								Escribir "el inverso del arreglo en la pos ",n," ingresado es ", arreglo[n]
							Fin Para
							Esperar 4 Segundos
							Borrar Pantalla
						"6":
							Dimension arreglo1[15],arreglo2[15],sumarreglo[15]
							Escribir "Ingrese cantidad de Elementos:" Sin Saltar
							Leer dim
							Escribir "Ingrese los datos para vector A"
							ingresarArreglo(arreglo1,dim)
							Escribir "Ingrese los datos para vector B"
							ingresarArreglo(arreglo2,dim)
							Escribir "Suma de vectores A + B"
							Para k<-1 Hasta dim Hacer
								sumarreglo[k]=arreglo1[k]+arreglo2[k]
								Escribir "La suma del vector C en la posicion ", k," es: ", sumarreglo[k]
							Fin Para
							Esperar 4 Segundos
							Borrar Pantalla
						"7":
							Dimension arreglo1(15)
							Escribir " Ingrese una serie de numeros"
							Leer nserie
							lon=Longitud(ConvertirATexto(nserie))
							nsprimos<-pserie(nserie,lon)
							Esperar 4 Segundos
							Borrar Pantalla
						"8":
							Definir arreglo,dim,suma Como Entero
							Definir promedio Como Real
							Escribir "Ingrese cantidad de Elementos:" Sin Saltar;Leer lim
							promedio=0;suma=0;cont=0
							Escribir "Ingrese las calificaciones"
							ingresarArreglo(arreglo,lim)
							promedio=pnotas(arreglo,lim)
							Esperar 4 Segundos
							Borrar Pantalla
						"9":
							Escribir "Ingrese frase:" Sin Saltar
							Leer frase
							presentarCadena(frase)
							Esperar 4 Segundos
							Borrar Pantalla
						"10":
							Escribir "Ingrese frase:" Sin Saltar
							Leer frase
							lon = Longitud(frase)
							presentarcadenainvertida(frase)
							Esperar 4 Segundos
							Borrar Pantalla
						"11":
							Escribir "Ingrese frase:" Sin Saltar
							Leer frase
							vocales(frase)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 3 Segundos
							Borrar Pantalla
						"12":
							Escribir "Ingrese frase:" Sin Saltar
							Leer frase
							lon = Longitud(frase)
							npalabras(frase)
							Esperar 4 Segundos
							Borrar Pantalla
						"13":
							Escribir "Ingrese un caracter:" Sin Saltar
							Leer frase
							lim= Longitud(frase)
							Escribir "Escriba la frase a buscar:";
							Leer buscado
							posicion=vbuscado(buscado,frase,lim)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 4 Segundos
							Borrar Pantalla
						"14":
							Escribir "Ingresa un caracter o palabra" Sin Saltar
							leer p1
							Escribir "Ingresa un caracter o palabra"Sin Saltar
							leer p2
							caracteres_igual = caracteres_iguales(arreglo1,arreglo2,p1,p2)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 4 Segundos
							Borrar Pantalla
						"15":
							Escribir "Ingrese una palabra:"
							Leer palabra
							lim=Longitud(palabra)
							Palindromo = npalindromo(lim,palabra)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 4 Segundos
							Borrar Pantalla
						"16":
							Escribir "Regresando Al Menu Principal..."
							Esperar 1 Segundos
							
						De Otro Modo:
							Escribir "Opcion Incorrecta"
							Esperar 3 Segundos
					Fin Segun
				Fin Mientras
			"4":
				Escribir "Gracias por usar el sistema"	
			De Otro Modo:
				Escribir "Opcion incorrecta"
		Fin Segun
    Fin Mientras
FinAlgoritmo