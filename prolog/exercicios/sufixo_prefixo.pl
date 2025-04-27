% Implemente um predicado que verifica se uma lista é sufixo de outra lista 

sufixo(L,L).
sufixo(L1,[_|T2]):- sufixo(L1,T2).

% Implemente um predicado que verifica se uma lista é prefixo de outra lista 

prefixo([],_).
prefixo([H1|T1],[H2|T2]):- H1 = H2, prefixo(T1,T2).