% Implemente um predicado que, dada uma lista, retorna uma lista, em ordem reversa, apenas com os números pares 

so_par(L,Res):-
    sopares(L,S), 
    reverse(S,Res).

sopares([],[]).
sopares([H|T], R):- sopares(T,R1), (H mod 2 =:= 0 -> R =[H|R1]; R = R1).