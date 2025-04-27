% Gerar todas as sublistas de uma lista 

listar([],[]).
listar([X|T],[X|L2]):- listar(T,L2).
listar([_|T], L2):- listar(T,L2).