/*
Recebe 2 listas e retorna uma lista com elementos que ocorrem apenas uma vez 
Ex: 
?- elem_unic([1,2,3], [2,4,5,1], R).
R = [3, 4, 5].
*/

elem_unic(L1, L2, R) :-
    append(L1, L2, L3),
    unicos(L3, R).

% Versão correta do predicado unicos
unicos([], []).
unicos([H|T], R) :-
    (member(H, T) ; member(H, R)) ->  % Se H está em T ou já está no resultado
        unicos(T, R)                 % Descarta H
    ;
        R = [H|R1],                  % Senão, inclui H