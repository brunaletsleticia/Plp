% Imprime todos os números de 0 até X (inclusive), em ordem crescente.

imprimeAte(X):- rec(0,X).
rec(Ini,Fim):- (Ini > Fim -> halt).
rec(Ini,Fim):- write(Ini), write(' '), I is Ini + 1, rec(I, Fim).