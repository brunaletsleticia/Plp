% Remove elementos consecutivos duplicados de uma lista.

compress([], []).
compress([X], [X]):-!. 
compress([H, H|T], [H|R]):- compress(T,R).
compress([H,Y|T], [H|R]):- H\= Y, compress([Y|T],R).