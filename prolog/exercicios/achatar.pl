/*
Transformar uma lista, possivelmente contendo listas como elementos, em uma lista `plana', substituindo cada lista por seus elementos (recursivamente).
Exemplo:
?- achatar([a, [b, [c, d], e]], X).
X = [a, b, c, d, e]
*/

achatar([], []).  % Caso base: lista vazia
achatar([H | T], Resultado) :-
    is_list(H), % Se H é uma lista
    achatar(H, H1), % Achata a H
    achatar(T, T1),  % Achata a T
    append(H1, T1, Resultado).

achatar([H | T], [H | ResultadoCauda]) :-
    \+ is_list(H),    % Se H NÃO é uma lista
    achatar(T, ResultadoCauda).  % Só continua com a cauda