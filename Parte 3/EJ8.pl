
%% pedro padece gripe

padece(pedro,gripe).

%% pedro padece hepatitis

padece(pedro,hepatitis).

%% juan padece hepatitis
padece(juan,hepatitis).
%% maria padece gripe
padece(maria,gripe).
%% carlos padece intoxicacion
padece(carlos,intoxicacion).
%% la fiebre es sintoma de gripe
sintoma(fiebre,gripe).
%% el cansancio es sintoma de hepatitis 
sintoma(cansancio,hepatitis).
%% la diarrea es sintoma de intoxicacion 
sintoma(diarrea,intoxicacion).
%% el cansancio es sintoma de gripe 
sintoma(cansancio,gripe).
%% la aspirina suprime la fiebre 
suprime(aspirina,fiebre).
%% el omotil suprime la diarrea 
suprime(omotil,diarrea).

%% ! conocimiento inferido !
%% un farmaco alivia una enfermedad si la enfermedad tiene un sintoma que sea suprimido por el farmaco 
alivia(Farmaco,Enfermedad) :- sintoma(S,Enfermedad),suprime(Farmaco,S).
%% una persona deberia tomar un farmaco si padece una enfermedad que sea aliviada por el farmaco 
debtomar(Persona,Farmaco) :- alivia(Farmaco,E),padece(Persona,E).

%% Cuestiones:
%% ?- padece(maria,X).
%% ?- padece(pedro,X).
%% ?- padece(P,gripe).
%% ?- padece(pedro,X),sintoma(S,X).
%% ?- padece(P,X),sintoma(diarrea,X).
%% ?- padece(P,X),sintoma(cansancio,X).
%% ?- debtomar(pedro,F).
%% ?- padece(juan,X),sintoma(S,X),padece(maria,Y),sintoma(S,Y).