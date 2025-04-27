% Implemente um predicado que retorna o penúltimo elemento de uma lista 

penultimo(X, [X,_]):- !.
penultimo(X, [_|T]):- penultimo(X,T).

% Implemente um predicado que retorna o último elemento de uma lista 

ultimo(X,[X]):- !.
ultimo(X,[_|T]):- ultimo(X,T).