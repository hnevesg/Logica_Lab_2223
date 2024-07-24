%% ! Es normal que no compile !

%% Ana odia a Elena

odia(ana,elena).

%% Pepa es ignorada por aquellos que odian a Elena

ignora(X,pepa) :- odia(X,elena).

%% Los que prescinden de pepa adoran a luis

prescinde(X,pepa) :- adoran(X,luis).

%% CONCLUSION:
%% ana prescinde de los que ignora
%% ana prescinde de todos los que ignora
