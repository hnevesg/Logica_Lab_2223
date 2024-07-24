

%% Los hongos se reproducen por medio de esporas
rep_esporas(X) :- hongo(X).

%% las trufas o las setas son hongos
hongo(X) :- trufa(X).
hongo(X) :- seta(X). 

%% todas las trufas son comestibles
comestible(X) :- trufa(X).

%% Tuber melanosporum y Tuber magnatum son trufas.

trufa(melanosporum).
trufa(magnatum).

%% La seta amanita muscaria es alucinógena.
seta(amanita_mus).
alucinogena(amanita_mus).

%% Si es alucinógena es venenosa.

venenosa(X) :- alucinogena(X).

%% La seta boletus satanás es venenosa.

venenosa(satanas).


%% El champiñón, el nı́scalo, el rebollón, boletus blanco y la amanita cesarea son setas comestibles.
comestible(champinon).
comestible(niscalo).
comestible(rebollon).
comestible(bol_blanco).
comestible(amanita_ces).


