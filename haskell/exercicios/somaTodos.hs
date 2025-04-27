-- Escreva um programa que recebe um inteiro e soma os seus digitos repetidamente até que o resultado tenha apenas um único digito.
-- Por exemplo: 12345 
-- -> 1+2+3+4+5 = 15 
-- -> 1+5 = 6

-- Teste Público:
    -- Entrada: 12345 
    -- Saída: 6    

somaTodos :: [Int] -> Int
somaTodos [] = 0
somaTodos (x:xs) = x + somaTodos xs

transf :: Int -> [Int]
transf num = map (\c -> read [c] :: Int) (show num)

reduzirAteUmDigito :: Int -> Int
reduzirAteUmDigito n
    | n < 10 = n
    | otherwise = reduzirAteUmDigito (somaTodos (transf n))

main :: IO ()
main = do
    num <- readLn :: IO Int
    print (reduzirAteUmDigito num)
   