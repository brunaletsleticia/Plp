/*
É Natal e você está colocando no carrinho presentes para todos os seus amigos. Ao chegar no caixa, você percebeu que não tem limite para levar tudo!
Implemente um programa que, dada a lista de preços (valor inteiro) de todos os seus itens e seu limite disponível no cartão, 
retorne uma lista com os produtos que você poderá comprar consumindo exatamente todo o seu limite.

ATENÇÃO: Você deve obrigatoriamente criar a regra de partida "main".
Testes Públicos:

    Entrada:
        main.
        [1,2,3,4,5].
        10.
    Saída:
        [[1,2,3,4],[1,4,5],[2,3,5]]
*/

main:-
read(Lista),
read(Limite),
findall(R,(carrinho(Lista,Limite,[], R), R \= []), Lis2),
sort(Lis2,Ajeitada),
writeln(Ajeitada),
halt.

carrinho([],0,Acumu, R):- sort(Acumu,R), R \= [].
carrinho([],_,_, []).
carrinho([H|T],Limite,Acumu, R):- H =< Limite, NovoLimite is Limite - H, carrinho(T,NovoLimite,[H|Acumu],R).
carrinho([_|T],Limite,Acumu, R):- carrinho(T,Limite,Acumu,R).
