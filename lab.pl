/* Facultad de Ciencias UNAM - Lógica Computacional 2015-2 
Profesor: Dr. Favio Ezequiel Miranda 
Ayudante: José Manuel Reyes Snyder
Laboratorio: C. Moises Vázquez Reyes */

%Nos dice cuándo algo es natural
nat(cero).
nat(suc(N)) :- nat(N).

%Para sumar naturales
suma(cero,N,N).
suma(suc(N),M,suc(R)) :- suma(N,M,R).

%Para multiplicar naturales
prod(cero,_,cero).
prod(suc(N),M,R) :- suma(NM,M,R),prod(N,M,NM).

%Algunas relaciones
gato(tom).
raton(jerry).
come(tom, jerry).
animal(oso).
animal(X) :- gato(X).
animal(X) :- raton(X).
peligroso(X) :- animal(X), (X = oso; come(X,_)).


%LISTAS

%Para obtener la cabeza de una lista
cabeza([X|_], X). 

%Para obtener la cola de una lista
cola([_|Y],Y).

%Para concatenar dos listas 
pega([],Y,Y).
pega([X|XS],YS, [X | ZS]) :- pega(XS,YS,ZS).


factorial(cero, suc(cero)).
factorial(suc(N), M) :- prod(suc(N),K,M), factorial(N,K).


elem(X, [X|_]).
elem(X, [_ | XS]) :- elem(X,XS).

potencia (_,cero,suc(cero)).
potencia (X,suc(cero),X).
potencia (X,suc(N),R) :- prod(X,X,XR),potencia(XR,N,R).
