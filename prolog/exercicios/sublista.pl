% Verifica se uma lista é sublista de outra lista

sublista([], _).  % Uma lista vazia é sublista de qualquer uma
sublista([H1|T1],[H2|T2]):- (H1 \= H2 -> sublista([H1|T1],T2)).
sublista([H1|T1],[H1|T2]):- sublista(T1,T2).