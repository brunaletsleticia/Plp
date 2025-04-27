-- Escreva a função intercalarListas que recebe duas listas ordenadas de inteiros em ordem crescente e retorna uma única lista ordenada contendo todos os elementos das duas listas. 
-- Ex: intercalaListas [1,3,5] [2,4,6] → [1,2,3,4,5,6]; intercalaListas [2,3,7] [2,4] → [2,2,3,4,7]

intercalaListas :: [Int] -> [Int] -> [Int]
intercalaListas [] ys = ys
intercalaListas xs [] = xs
intercalaListas (x:xs) (y:ys)
    | x <= y    = x : intercalaListas xs (y:ys)
    | otherwise = y : intercalaListas (x:xs) ys