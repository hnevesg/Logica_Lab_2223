
lil3([]).
lil3([X|Xs]) :- X<3,lil3(Xs).

lildado([],_).
lildado([X|Xs],N) :- X<N,lildado(Xs,N).