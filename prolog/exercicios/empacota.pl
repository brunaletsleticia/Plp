/* Empacote duplicatas consecutivas de elementos da lista em sublistas.
Se uma lista contiver elementos repetidos, eles devem ser colocados em sublistas separadas.
- Exemplo:
    ?- pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
    X = [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]
*/

pack([],[]).
pack([H|T],[G|R]):-
    auxx(H,T,G,R1),
    pack(R1,R).

auxx(H,[],[H],[]). % H eh o ultimo elemento

auxx(Elem,[H|T],[Elem],[H|T]):-
    Elem \= H.

auxx(Elem, [Elem|T1],[Elem|G],Resto):-
    auxx(Elem,T1,G,Resto).