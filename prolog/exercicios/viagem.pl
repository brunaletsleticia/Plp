/*
Imagine que um viajante do tempo deseja explorar diferentes períodos históricos, mas precisa evitar paradoxos temporais. Para isso, ele pode viajar apenas para anos que não causem paradoxos, seguindo estas regras:
1 - O viajante pode viajar para qualquer ano no passado,  desde que seja um múltiplo do ano de nascimento dele.
2 - Ele pode viajar para o futuro, mas apenas para anos que sejam potências do seu ano de nascimento.
3 - Se o viajante tentar ir para um ano inválido, um aviso de "Paradoxo detectado!" deve ser exibido.

Implemente um programa em Prolog que permita verificar se um viajante pode viajar para um determinado ano sem causar paradoxos. O programa deve:

- Solicitar ao usuário o ano de nascimento do viajante.
- Solicitar o ano de destino desejado.
- Verificar se a viagem é válida.
- Exibir "Viagem permitida!" se o ano for permitido.
- Exibir "Paradoxo detectado!" caso contrário.

ATENÇÃO: Você deve obrigatoriamente criar a regra de partida "main".

Testes Públicos:
    Entrada:
        main.
        2000.
        1000.

    Saida:  
        Viagem permitida!
*/

verificarViag(AnoNasc,AnoDest):- vigvalida(AnoNasc, AnoDest),write('Viagem permitida!'),!.

verificarViag(_,_):- write('Paradoxo detectado!').
    
vigvalida(AnoNasc,AnoDest):- AnoDest =< AnoNasc, AnoNasc mod AnoDest =:= 0.

vigvalida(AnoNasc,AnoDest):- AnoDest > AnoNasc, eh_pot(AnoDest,AnoNasc).

eh_pot(X,B):- eh_pot(X,B,1).
eh_pot(X,_,A):- A =:= X.
eh_pot(X,B,A):-A < X, N is A * B, eh_pot(X,B,N).
    
main :-
    read(AnoNasc),
    read(AnoDest),
    verificarViag(AnoNasc,AnoDest),
    halt.
 