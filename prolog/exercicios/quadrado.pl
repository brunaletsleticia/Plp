% Implemente um predicado que imprime o quadrado de um número (em loop) até ler a palavra stop.

quadrado:- read(X), nl, (X = stop -> halt; Y is X * X, write(Y), write(' '), nl, quadrado).
