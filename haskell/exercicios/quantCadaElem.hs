-- Implemente um programa em Haskell que recebe uma lista de inteiros e retorna uma lista
-- contendo a quantidade de cada elemento. 
-- Ex: [1,2,3,4,5] retorna [1,1,1,1,1]; [1,2,3,1,1] retorna [3,1,1,3,3]

retorna :: [Int] -> [Int]
retorna xs = map(\x -> count x xs) xs
        where 
            count x = length . filter (== x)