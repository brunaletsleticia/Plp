/*Escreva um programa em Prolog que recebe 2 inteiros e gere uma lista contendo o 
intervalo decrescente dos valores entre eles. Caso a primeira entrada seja menor que a 
segunda, o programa deverá retornar a mensagem "Não existe!".*/


decresc(Ini, Fim, _):-
    (Fim > Ini -> write('Não existe!')), !.

decresc(Ini,Ini,[Ini]):- !.

decresc(Ini, Fim, [Ini|R]):-
    Ini > Fim,
    I is Ini -1, decresc(I, Fim, R).
