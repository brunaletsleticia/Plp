% Concatenar 2 listas 

concatenar([],L,L).
concatenar([H|T],L2,[H|L3]):- concatenar(T,L2,L3).