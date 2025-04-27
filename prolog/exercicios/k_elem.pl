% Implemente um predicado que retorna o elemento na k posição

elem(1,[X|_],X):- !.
elem(K,[_|T],R):- K1 is K-1, elem(K1,T,R). 