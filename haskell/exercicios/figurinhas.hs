-- Ricardo e Vicente, apaixonados por figurinhas, criaram uma brincadeira onde, ao trocar figurinhas com amigos,
-- cada um divide suas figurinhas em pilhas do maior tamanho comum possível. Por exemplo, se Ricardo possui 8 figurinhas e Vicente 12,
-- a conjugaração com as maiores pilhas é aquela onde cada pilha possui 4 figurinhas. Em seguida, cada um escolhe uma pilha do amigo para trocar. 
-- Desenvolva um programa que baseado que recebe 2 entradas, o número de figurinhas cada jogador possuí, e retorna a maior pilha de figurinhas possível para estes fazerem a troca. 
-- Teste Público:
    -- Entrada: 8 12
    -- Saída: 4 eh o maior bolo de figurinhas possivel.

mdc :: Int -> Int -> Int
mdc x 0 = x
mdc x y = mdc y (mod x y)

main :: IO()
main = do
 ric <- readLn :: IO Int
 vic <- readLn :: IO Int
 putStrLn $ show (mdc ric vic) ++ " eh o maior bolo de figurinhas possivel."
