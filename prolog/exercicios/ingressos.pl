/*
Em eventos culturais, pessoas de diferentes idades podem pagar meia-entrada ou entrada completa com base nos seguintes critérios:

- Crianças com 13 anos ou menos pagam meia-entrada
- Idosos com 60 anos ou mais pagam meia-entrada
- Pessoas entre 14 e 59 anos pagam entrada completa, a menos que possuam carteira de estudante
Implemente um programa que receba como entrada uma lista com as idades de todas as pessoas que comparacerão, número de pessoas com carteira de estudante e o valor da entrada completa em reais e que faça o cálculo de quanto irá custar para pagar o ingresso de todos.

ATENÇÃO: Você deve obrigatoriamente criar a regra de partida "main".

Testes Públicos:
    Entrada:
            main.
        [12, 12, 15, 22, 25, 40].
        2.
        15.5.
    Saida:
            Meias entradas: 4
            Entradas completas: 2
            Preço total: 62.00 reais
*/

main:-
read(Idades),
read(Estudante),
read(Entrada),

count_meia(Idades,Estudante, Meias),
length(Idades,TotalPessoas),
Compl is TotalPessoas - Meias,

calcular_preco(Meias, Compl, Entrada, PrecoTotal),

format('Meias entradas: ~d~nEntradas completas: ~d~nPreço total: ~2f reais~n', [Meias,Compl,PrecoTotal]),
halt.

count_meia([],_, 0).
count_meia([H|T],Estudante, Count):-
    (H =< 13; H >= 60) -> count_meia(T,Estudante,SubCount), Count is SubCount + 1;
    Estudante > 0 -> NovaCart is Estudante -1, count_meia(T,NovaCart, SubCount), Count is SubCount + 1;
    count_meia(T,Estudante,Count).

calcular_preco(Meias, Compl, Entrada, Total):-
    Total is (Meias * Entrada /2) + (Compl * Entrada).

