
%% arturo y bartolo son rufianes
rufian(arturo).
rufian(bartolo).

%% romeo y arturo, como puede suponerse por sus nombres, son nobles
noble(romeo).
noble(arturo).

%% bartolo es un plebeyo 
plebeyo(bartolo).

%% ginebra y julieta son damas. ademas julieta es hermosa 
dama(ginebra).
dama(julieta).
hermosa(julieta).

%% como bien es conocido, los plebeyos desean a cualquier dama, mientras que los nobles solo a aquellas que son hermosas
desea(X,Y) :- (plebeyo(X),dama(Y)).
%% combinado con el ultimo
%% desea(X,Y) :- (noble(X),dama(Y),hermosa(Y)).

%% los rufianes, para satisfacer sus instintos, raptan a las personas a las que desean 
rapta(R,P) :- rufian(R),desea(R,P).

%% ningun noble desea a una dama a menos que ella lo rapte
desea(X,Y) :- noble(X),dama(Y),hermosa(Y),rapta(Y,X).


%% responder estas preguntas

%% que noble es un rufian
%% ?- noble(X),rufian(X).
%% quien es susceptible de ser raptado por romeo
%% ?- rapta(romeo,X).
%% a quien desea romeo
%% ?- desea(romeo,X).
%% a quienn desea bartolo
%% ?- desea(bartolo,X).
%% que dama rapta a quien 
%% ?- rapta(X,Y),dama(X).
