-- Considere o jogo de palavras "Word Chain", onde os jogadores devem formar uma cadeia de palavras, onde cada palavra da cadeia deve começar com a última letra da 
-- palavra anterior. Por exemplo, a cadeia "apple -> elephant -> tiger -> rabbit" é válida, pois cada palavra começa com a última letra da palavra anterior. Escreva a 
-- função Haskell wordChain, que recebe uma lista de palavras e verifica se é possível formar uma cadeia válida de palavras de acordo com as regras do jogo. 
-- Ex: wordChain ["'apple", "elephant", "tiger", "rabbit"] → True; WordChain ["'apple", "elephant", "rabbit"] → False

wordChain :: [String] -> Bool 
wordChain [] = True
wordChain [_] = True 
wordChain (w1:w2:ws) = last w1 == head w2 && wordChain (w2:ws)