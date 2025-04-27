-- Uma empresa de passeios com cachorros precisa de um programa que calcule o trajeto 
-- percorrido por um cachorro durante seu passeio e verifique se ele atingiu sua meta diária de passos.

-- O sistema deve funcionar com as seguintes regras:

-- * Cada cachorro começa com zero passos acumulados.
-- * O dono do cachorro deve informar os passos dados em cada trecho do trajeto.
-- * A meta diária do cachorro é 1.000 passos.

-- Quando a soma acumulada de passos atinge exatamente os 1.000 passos, o programa deve imprimir: "Meta de passos alcançada com precisão!".
-- Quando a soma acumulada de passos for maior que 1.000 passos, o programa deve imprimir: "Meta de passos excedida por <diferenca> passos." onde <diferenca> é a quantidade de passos acima da meta.
-- Antes de atingir a meta, após cada registro, o programa deve exibir a mensagem: "Passos acumulados: <total>".

-- Entrada:
    -- O número de passos dados pelo cachorro no trecho atual.

-- Saída:
    -- Mensagem de boas vindas.
    -- Mensagens que mostram os passos acumulados após cada trecho.
    -- Mensagem final informando se a meta foi alcançada com precisão ou excedida.

-- Testes Públicos:
    -- Entradas:
        -- 100 500 200 200

    -- Saída:
        -- Sistema de rastreamento de passeios para cachorros
        -- Passos acumulados: 0
        -- Informe os passos dados pelo cachorro:
        -- Passos acumulados: 100
        -- Informe os passos dados pelo cachorro:
        -- Passos acumulados: 600
        -- Informe os passos dados pelo cachorro:
        -- Passos acumulados: 800
        -- Informe os passos dados pelo cachorro:
        -- Meta de passos alcançada com precisao!

passos :: Int -> IO ()
passos atual = do
    input <- getLine
    let p = read input :: Int
    let total = atual + p
 
    if total < meta
        then do
            putStrLn $ "Passos acumulados: " ++ show total
            putStrLn "Informe os passos dados pelo cachorro:"
            passos total
    else if total == meta
        then do
            putStrLn "Meta de passos alcançada com precisao!"
    else do
            putStrLn $ "Meta de passos excedida por " ++ show(total-meta) ++ " passos."
    where
        meta = 1000
  
main :: IO ()
main = do
 putStrLn "Sistema de rastreamento de passeios para cachorros"
 putStrLn "Passos acumulados: 0"
 putStrLn "Informe os passos dados pelo cachorro:"
 passos 0