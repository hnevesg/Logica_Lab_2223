%% 

conexion(a,b).
conexion(b,c).
conexion(b,d).

camino(X,Y) :- conexion(X,Y).
camino(X,Y) :- conexion(X,Z),camino(Z,Y).

len([],0).

len([_|T],X) :- len(T,Y),plus(Y, 1, X).


less([],_).
less([X|XS],N) :- X<N,less(XS,N).