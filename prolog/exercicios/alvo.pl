/*
4. Escreva um programa em Prolog que recebe uma lista e um elemento alvo, e retorne uma nova lista onde todas as ocorrências desse elemento são substituídas por outro valor.
Ex:
substituir_elemento([a, b, c, a, d], a, z, R)→ R = [z, b, c, z, d] 
substituir elemento([1, 1, 1], 1, a, R)→ R = [a, a, a]
*/

substituir_elemento([],_,_,[]):- !.
substituir_elemento([Elem|T],Elem,A,[A|R]):- substituir_elemento(T,Elem,A,R).
substituir_elemento([H|T],Elem,A,[H|R]):- H \= Elem, substituir_elemento(T,Elem,A,R).