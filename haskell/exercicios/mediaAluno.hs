-- Leia quatro números (N1, N2, N3, N4), cada um deles com uma casa decimal, correspondente às quatro notas de um aluno. Calcule a média com pesos 2, 3, 4 e 1, respectivamente, para cada uma destas notas e mostre esta média acompanhada pela mensagem "Media: ". Se esta média for maior ou igual a 7.0, imprima a mensagem "Aluno aprovado.". Se a média calculada for inferior a 5.0, imprima a mensagem "Aluno reprovado.". Se a média calculada for um valor entre 5.0 e 6.9, inclusive estas, o programa deve imprimir a mensagem "Aluno em exame.".
-- No caso do aluno estar em exame, leia um valor correspondente à nota do exame obtida pelo aluno. Imprima então a mensagem "Nota do exame: " acompanhada pela nota digitada. Recalcule a média (some a pontuação do exame com a média anteriormente calculada e divida por 2). e imprima a mensagem "Aluno aprovado." (caso a média final seja 5.0 ou mais ) ou "Aluno reprovado.", (caso a média tenha ficado 4.9 ou menos). Para estes dois casos (aprovado ou reprovado após ter pego exame) apresente na última linha uma mensagem "Media final: " seguido da média final para esse aluno.
-- Entrada: A entrada contém quatro números de ponto flutuante correspendentes as notas dos alunos.
-- Saída: Todas as respostas devem ser apresentadas com uma casa decimal. As mensagens devem ser impressas conforme a descrição do problema. Não esqueça de imprimir o enter após o final de cada linha, caso contrário obterá "Presentation Error".

-- Exemplo: 9.0 4.0 8.5 9.0
    -- Media: 7.3
    -- Aluno aprovado.

import Text.Printf (printf)

calculaMedia :: Float -> Float -> Float -> Float -> Float
calculaMedia n1 n2 n3 n4 = (n1 * 2 + n2 * 3 + n3 * 4 + n4 * 1) / 10

main :: IO ()
main = do
    input <- getLine
    let [n1, n2, n3, n4] = map read (words input) :: [Float]
        media = calculaMedia n1 n2 n3 n4
    printf "Media: %.1f\n" media
    if media >= 7.0 then
        putStrLn "Aluno aprovado."
    else if media < 5.0 then
        putStrLn "Aluno reprovado."
    else do
        putStrLn "Aluno em exame."
        exame <- readLn
        printf "Nota do exame: %.1f\n" exame
        let mediaFinal = (media + exame) / 2
        if mediaFinal >= 5.0 then
            putStrLn "Aluno aprovado."
        else
            putStrLn "Aluno reprovado."
        printf "Media final: %.1f\n" mediaFinal
