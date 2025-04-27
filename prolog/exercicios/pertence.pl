% Implemente um predicado que verifica se dado elemento pertence a uma lista

pertence(X,[X|_]):- !.
pertence(X,[_|T]):- pertence(X,T).