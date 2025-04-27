% Separar números e letras em duas listas: uma lista para números e outra para letras 

separa(Lista, [Numeros, Letras]) :-
    aux(Lista, [], [], Numeros, Letras).

aux([],NumsParciais,LetrasParciais,Num,Letras):-
 reverse(NumsParciais,Num),
    reverse(LetrasParciais,Letras).

aux([H|T],NumsParciais,LetrasParciais,Num, Letras):-
    number(H),
    aux(T,[H|NumsParciais],LetrasParciais,Num,Letras).

aux([H|T],NumsParciais,LetrasParciais,Num, Letras):-
    \+ number(H),
    aux(T,NumsParciais,[H|LetrasParciais],Num,Letras).