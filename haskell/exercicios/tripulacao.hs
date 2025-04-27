-- Faça um programa que simule a batalha de tripulações onde as tripulações possuem uma quantidade de  membros e uma força de combate específica. Durante uma batalha entre duas tripulações, a força de combate de cada tripulação é representada por uma lista de números inteiros, onde cada número corresponde à força de um membro. O objetivo é determinar qual tripulação tem a maior força de combate somando as forças dos membros da tripulação.
-- Dada a força de combate de duas tripulações, calcule a soma das forças de cada tripulação. Com base na soma total, determine qual das tripulações venceu a batalha. Considere a seguinte lógica:
    -- 1 - Se a soma das forças da primeira tripulação for maior que a soma da segunda tripulação, a primeira tripulação venceu.
    -- 2 - Se a soma das forças da segunda tripulação for maior que a soma da primeira tripulação, a segunda tripulação venceu.
    -- 3 - Se as somas forem iguais, a batalha foi empatada. 

-- A entrada será composta por duas listas de inteiros (forças dos membros de cada tripulação) e o resultado será exibido no formato:
    -- "Tripulacao 1 venceu";  "Tripulacao 2 venceu" ou "Empate"

-- Teste Público:
    -- Entrada:
        -- 10 20 30 40
        -- 15 25 35 45
    -- Saída:
        -- Digite as forcas da Tripulacao 1:
        -- Digite as forcas da Tripulacao 2:
        -- Tripulacao 2 venceu

soma :: [Int] -> Int
soma [] = 0
soma (x:xs) = x + soma xs

vencedor :: [Int] -> [Int] -> String
vencedor trip1 trip2
    |soma trip1 > soma trip2 = "Tripulacao 1 venceu"
    |soma trip1 < soma trip2 = "Tripulacao 2 venceu"
    |otherwise = "Empate"
    
main :: IO()
main = do
    putStrLn "Digite as forcas da Tripulacao 1:"
    a <- getLine
    putStrLn "Digite as forcas da Tripulacao 2:"
    b <- getLine
    let trip1 = map read (words a) :: [Int]
    let trip2 = map read (words b) :: [Int]
    putStrLn (vencedor trip1 trip2)