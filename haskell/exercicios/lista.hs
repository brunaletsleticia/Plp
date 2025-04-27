-- Exxercícios básicos de lista

dobrarLista :: [Int] -> [Int]
dobrarLista xs = map (\x -> 2*x) xs
-- Exemplo:
-- dobrarLista [1,3,5] => [2,6,10]

somarTres xs = map (\x -> 3 + x) xs
-- Exemplo:
-- somarTres [4,5,6] => [7,8,9]

ehPar xs = map (\x -> x `mod` 2 == 0) xs
-- Exemplo:
-- ehPar [1,2,3,4] => [False,True,False,True]

subtrairUm xs = map (\x -> x-1) xs
-- Exemplo:
-- subtrairUm [3,2,0] => [2,1,0]

parOuImpar xs = map (\x -> if x `mod` 2 == 0 then "par" else "impar") xs
-- Exemplo:
-- parOuImpar [1,2,3] => ["ímpar","par","ímpar"]