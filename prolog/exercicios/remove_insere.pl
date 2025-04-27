/*
Remove um elemento na posição k */

remove(X, [X|T], 1, T).  

remove(X, [H|T], K, [H|R]) :-
    K > 1,
    K1 is K - 1,
    remove(X, T, K1, R).

/*
Insere um elemento na posição k*/

insere(Elem, Lista, 1, [Elem|Lista]). 

insere(Elem, [H|T], K, [H|R]) :-
    K > 1,
    K1 is K - 1,
    insere(Elem, T, K1, R).