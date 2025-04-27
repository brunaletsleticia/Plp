/*
Implementar o método de compressão de dados chamado codificação run-length:
Duplicatas consecutivas de elementos são codificadas como termos [N,E], onde N é o número de duplicatas do elemento E.
*/

pack([], []).  

pack([H|T], [Grupo|RestoAgrupado]) :-        
    empacota_iguais(H, T, Grupo, Resto),
    pack(Resto, RestoAgrupado).

% empacota_iguais(Elemento, ListaRestante, Grupo, Resto)
empacota_iguais(H, [], [H], []).

empacota_iguais(H, [X|T], [H], [X|T]) :- H \= X.

empacota_iguais(H, [H|T], [H|Grupo], Resto):- empacota_iguais(H, T, Grupo, Resto).

encode(Lista, Resultado) :-
    pack(Lista, ListaEmpacotada),
    transforma(ListaEmpacotada, Resultado).

transforma([], []).

transforma([Grupo|T], [[N, E]|Resto]) :-
    length(Grupo, N),
    Grupo = [E|_],
    transforma(T, Resto).
