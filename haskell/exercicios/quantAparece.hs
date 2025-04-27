-- Escreva a função chamada conta que recebe uma string e retorna uma lista de pares ((Char, Int)), onde o Char é o caractere e o Int é o número de vezes que ele aparece
-- Ex: banana: (b,1); (a,3); (n,2)

conta :: String -> [(Char, Int)]
conta [] = []
conta lista = (head lista, count (head lista) lista) : conta (filter (/= head lista) (tail lista))
    where count x = length . filter (== x)
