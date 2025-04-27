-- Leia 4 valores inteiros A, B, C e D. A seguir, se B for maior do que C e se D for maior do que A, e a soma de C com D for maior que a soma de A e B e se C e D, ambos, forem positivos e se a variável A for par escrever a mensagem "Valores aceitos", senão escrever "Valores nao aceitos".
-- Entrada: Quatro números inteiros A, B, C e D.
-- Saída: Mostre a respectiva mensagem após a validação dos valores.
-- Exemplo 
-- 5 6 7 8 Valores nao aceitos
-- 2 3 2 6 Valores aceitos

aceita :: Int -> Int -> Int -> Int -> String
aceita a b c d 
    | (b > c) && (d > a) && (c + d > a + b) && (c >= 0) && (d >= 0) && (a `mod` 2 == 0) = "Valores aceitos"
    | otherwise = "Valores nao aceitos"
main :: IO ()
main = do
    input <- getLine  
    let numeros = map read (words input) :: [Int] -- px o split de java
    let [a, b, c, d] = numeros
    putStrLn (aceita a b c d)

