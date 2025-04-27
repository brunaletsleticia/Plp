% Implemente um predicado que calcula o tamanho de uma lista 

tamanho([],0).
tamanho([_|T],R):- tamanho(T,R1), R is R1 + 1.