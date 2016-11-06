
% definicion de barcos y mar
mar(~).
lancha(l).
submarino(s).
crucero(c).
destructor(d).
portaviones(p).

% Predicado que verifica si X es un caracter valido (~,l,s,c,d,p).
caracterValido(X):-
	mar(X);lancha(X);submarino(X);crucero(X);destructor(X);portaviones(X).
% Predicado que verifica si X es un barco (l,s,c,d,p).
barco(X):-
	lancha(X);submarino(X);crucero(X);destructor(X);portaviones(X).


tablero(
    0,6,6,3,
     [6,6,3,3,0,0,
     [[~,l,~,~,c,~],
      [~,~,~,~,c,~],
      [~,s,s,~,c,~],

      [~,c,c,c,~,~],
      [~,~,~,l,s,s],
      [~,~,~,~,~,~]
     ]]
    ).

tablero(
    1,6,6,3,
     [6,6,3,3,0,0,
     [[~,s,s,~,c,~],
      [~,~,l,~,c,~],
      [~,~,~,~,c,~],

      [~,~,~,l,~,~],
      [~,~,s,s,~,~],
      [~,~,c,c,c,~]
     ]]
    ).

tablero(
    2,6,6,3,
     [6,6,3,3,0,0,
     [[~,~,~,~,s,~],
      [~,c,c,c,s,~],
      [~,~,l,~,~,~],

      [~,s,s,~,~,c],
      [~,~,~,l,~,c],
      [~,~,~,~,~,c]
     ]]
    ).

tablero(
    1,10,10,5,
     [10,10,5,5,0,0,
     [[~,~,p,p,p,p,p,~,~,~],
      [~,c,~,~,~,d,~,s,~,~],
      [~,c,~,l,~,d,~,s,~,~],
      [~,c,~,~,~,d,~,~,~,~],
      [~,~,~,~,~,d,~,~,~,~],

      [~,d,d,d,d,~,~,~,~,~],
      [~,~,p,p,p,p,p,l,~,~],
      [~,~,~,~,~,~,c,c,c,~],
      [~,~,~,s,s,~,~,~,~,~],
      [~,~,~,~,~,~,~,~,~,~]
     ]]
    ).
tablero(
    _,10,10,5,
     [10,10,5,5,0,0,
     [[~,p,~,~,~,d,d,d,d,~],
      [~,p,~,~,~,~,s,~,~,c],
      [~,p,~,l,~,~,s,~,~,c],
      [~,p,~,~,~,~,~,~,~,c],
      [~,p,~,~,~,~,~,~,~,~],

      [c,c,c,~,~,p,~,~,~,~],
      [~,~,d,s,s,p,~,~,~,~],
      [~,~,d,~,~,p,~,l,~,~],
      [~,~,d,~,~,p,~,~,~,~],
      [~,~,d,~,~,p,~,~,~,~]
     ]]
    ).


tablero(
    _,20,20,10,
     [20,20,10,10,0,0,
     [[~,~,~,l,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~],
      [~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,p,~],
      [~,~,~,~,~,~,c,c,c,~,~,~,s,s,~,~,~,~,p,~],
      [~,~,~,~,s,s,~,~,~,~,~,~,~,~,~,~,~,~,p,~],
      [~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,d,~,~,p,~],
      [~,~,~,~,d,~,~,~,~,l,~,~,~,~,~,d,~,~,p,~],
      [~,~,~,~,d,~,~,~,~,~,~,~,~,~,~,d,~,~,~,~],
      [~,~,~,~,d,~,~,~,~,c,~,~,~,~,~,d,~,~,~,~],
      [~,~,~,~,d,~,~,~,~,c,~,~,~,~,~,~,~,~,~,~],
      [~,~,~,p,p,p,p,p,~,c,~,~,~,~,~,~,~,~,~,~],

      [~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~],
      [~,~,~,~,l,~,~,~,~,~,~,~,~,~,c,~,~,~,~,~],
      [~,~,~,~,~,~,~,~,~,~,~,~,~,~,c,~,~,~,~,~],
      [~,~,s,~,~,~,~,~,~,s,s,~,~,~,c,~,~,~,~,~],
      [~,~,s,~,~,~,~,~,~,~,~,~,p,~,~,~,~,~,~,~],
      [~,~,~,~,~,~,~,~,~,d,~,~,p,~,~,~,l,~,~,~],
      [~,p,p,p,p,p,~,~,~,d,~,~,p,~,~,~,~,~,~,~],
      [~,~,~,~,~,~,~,~,~,d,~,~,p,~,~,d,d,d,d,~],
      [~,~,c,c,c,~,~,~,~,d,~,~,p,~,~,~,~,~,~,~],
      [~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~]
     ]]
    ).
% Predicado que entrega a traves de la variable Matriz la matriz de un
% Board
matriz(Matriz,Board):-
	obtenerElementoLista(Board,Matriz,6).

% Predicado que entrega a traves de la variable N la cantidad de filas
% de un Board
filas(N,Board):-
	obtenerElementoLista(Board,N,0).

% Predicado que entrega a traves de la variable M la cantidad de
% columnas de un Board
columnas(M,Board):-
	obtenerElementoLista(Board,M,1).

% Predicado que entrega a traves de la variable BU la cantidad de barcos
% del usuario en un Board
barcosUsuario(BU,Board):-
	obtenerElementoLista(Board,BU,2).

% Predicado que entrega a traves de la variable BC la cantidad de barcos
% de la computadora en un Board
barcosCPU(BC,Board):-
	obtenerElementoLista(Board,BC,2).

% Predicado que entrega a traves de la variable SU el puntaje del
% usuario obtenido en un juego.
puntajeUsuario(SU,Board):-
	obtenerElementoLista(Board,SU,4).

% Predicado que entrega a traves de la variable SU el puntaje del
% usuario obtenido en un juego.
puntajeCPU(SC,Board):-
	obtenerElementoLista(Board,SC,5).

% Predicado muestra una matriz.
show_matriz([]).
show_matriz([C|Co]):-
	print(C),
	nl,
	show_matriz(Co).

% show_matriz(N,M,NumShips,BOARD):-createBoard(N,M,NumShips,BOARD),show_matriz(BOARD).
% eliminar esta cosa parece! ^(arribla)^










% Predicado que cuenta los elementos de una lista cuando N vale 0
contarElementos([],N,N).
contarElementos([_|T],N,N3):- N2 is N+1, contarElementos(T,N2,N3).

% Predicado que verifica si en una matriz se encuentran solamente
% caracteres validos (~,l,s,c,d,p).
recorrerMatrix([]).
recorrerMatrix([F|M]):- filaValida(F),recorrerMatrix(M).

% Predicado que verifica que en una lista se encuentran solomanete
% caracteres validos(~,l,s,c,d,p).
filaValida([]).
filaValida([C|L]):-
	caracterValido(C),filaValida(L).


% Predicado que entrega la cabeza de una lista a traves de la varaible H
cabezaLista([H|_],H).
% Predicado que entrega la cola de una lista a traves de la variable T
colaLista([_|T],T).

% Predicado que entrega un elemento de la lista en la posicion N, este
% es entregado a travez de la variable Elemento.
obtenerElementoLista([X|_],X,0).
obtenerElementoLista([_|T],Elemento,N):- N2 is N-1,obtenerElementoLista(T,Elemento,N2),!.


% Predicado que verifica que la matriz contiene las mismas columnas en
% cada fila de ella (de la matriz).
verificarColumnas([_|[]]).
verificarColumnas([X,Y|L]):-
	length(X,Len),
	length(Y,Len),
	verificarColumnas([Y|L]),!.






% Predicado que verifica si una posicio entrega
% es valida, esto quiere decir que se encuentra
% dentro del tablero del juego. EJ: [coodenadaX,cooredenaY].
posicionValida([X|Y],Board):-
	filas(N,Board),
	X>=0,X<N/2,
	cabezaLista(Y,C),
	columnas(M,Board),
	C>=0,C<M.

% Predicado que verifica si las posiciones entregadas como lista son
% validas, esto quiere decir que se encuentren dentro del tablero del
% juego.
posicionesValidas([],_):-!.
posicionesValidas([X|Y],Board):-
	posicionValida(X,Board),posicionesValidas(Y,Board).

% Predicado que recibe una Board y posiciones X, Y correspondiente a las
% filas y columnas respectivamente, luego entrega en la variable E el
% elemento que se encuentra dentro de la matriz en la posicion indicada.
obtenerElementoBoard(Board,E,X,Y):-
	matriz(Matriz,Board),
	obtenerElementoLista(Matriz,Fila,X),
	obtenerElementoLista(Fila,E,Y).
% Predicado que verifica si en una de las posiciones entregas como
% lista, se encuentra un barco que revise el disparo.
ataqueEfectivo([[]],_).
ataqueEfectivo([C|Co],Board):-
	obtenerElementoLista(C,E,0),
	obtenerElementoLista(C,E2,1),
	obtenerElementoBoard(Board,Elem,E,E2),
	%display(Elem),
	(   barco(Elem)->!;ataqueEfectivo(Co,Board)).


% ------------------------------------------------------------------------
% Predicado que retorna la cola de una lista en una posicion pedida a
% traves dela variable OUT.
obtenerSubLista([_|Y],0,Y).
obtenerSubLista([_|Y],POSAUX,OUT):-
	POS is POSAUX-1,
	obtenerSubLista(Y,POS,OUT).

% Predicado que entrega la matriz perteneciente al usuario a travez de
% la variable Matriz.
matrizUsuario(Matriz,Board):-
	filas(N,Board),
	N1 is N/2-1,
	matriz(MatrizBoard,Board),
	obtenerSubLista(MatrizBoard,N1,Matriz).

% Predicado que verifica si existe un barco dentro de una lista.
existeBarco(X,[F|M]):-
	barco(X),
	(   member(X,F)->!;existeBarco(X,M)).
% Predicado que verifica si exsite un barco en el tablero que pertenece
% a un usuario, se debe recibir el tableor completo a traves de la
% variable Board.
existeBarcoUsuario(X,Board):-
	matrizUsuario(Matriz,Board),
	existeBarco(X,Matriz).



% Predicado que verifica si los disparos realizados son validos y que
% afect� a un barco enemigo.
play(BOARD,Ship,Posiciones):-
	checkBoard(BOARD),
	existeBarcoUsuario(Ship,BOARD),
	posicionesValidas(Posiciones,BOARD),
	ataqueEfectivo(Posiciones,BOARD).

% Predicado que entrega un string de una matriz a traves de la
% variable MatrizStr
matrizToString([],'').
matrizToString(Matriz,MatrizStr):-
       cabezaLista(Matriz, H), atomic_list_concat(H,'',StrAux),atom_concat(StrAux,'\n',StrAux2),
       display(StrAux2),
       colaLista(Matriz,L), matrizToString(L, StrAux3), atom_concat(StrAux2,StrAux3,MatrizStr).


% predicado que entrga un string del trablero a traves de de la variable
% BoardStr
boardToString(Board,BoardStr):-
	matriz(Matriz,Board),
	matrizToString(Matriz,BoardStr).
% Predicado que entrega el Score (puntaje), de un tablero a traves de
% la variable BoardScr
score(Board,BoardScr):-
	puntajeUsuario(BoardScr,Board).

% Predicado que crea un tablero valido de dimensiones NxM con una
% cantidad de barcos NumShips para cada jugador, este tablero es
% entregado a traves de la variable BOARD
createBoard(N, M, NumShips, BOARD):-X is random(3),
	tablero(X,N,M,NumShips,BOARD),
	matriz(Matriz,BOARD),
	show_matriz(Matriz),!.



% Predicado que verifica si un tablero es valido para el desarrolo de un
% jeugo.
checkBoard(BOARD):-
	contarElementos(BOARD,0,E),
	E = 7,
	%display(E),
	matriz(Matriz,BOARD),
	verificarColumnas(Matriz),
	filas(N,BOARD),
	contarElementos(Matriz,0,N),
	columnas(M,BOARD),
	obtenerElementoLista(Matriz,Fila,0),
	contarElementos(Fila,0,M),
	A is N mod 2,
	A = 0,
	recorrerMatrix(Matriz).




% Predicado que entrega cuantos caracteres de barco hay en una lista a
% traves de la variable N
contar([],0).
contar([X|Y],N):- caracterValido(X),contar(Y,W),N is W + 1.
contar([_|Y],N):- contar(Y,N).

% Predicado que entrega cuantos caracteres de barco hay en una matriz a
% traves de la variable N
contarEnMatriz([],0).
contarEnMatriz([X|L],R):-
	contar(X,N),contarEnMatriz(L,Ra),R is Ra+N.
