encontrado :: [Int] -> Int -> Bool
encontrado [] _ = False
encontrado (x : xs) a
  -- Condicional Guards. Equivalente de If | Else if | Else
  | a == x = True
  | otherwise = encontrado xs a

main :: IO ()
main = do
  print (encontrado [1, 4, 5, 1, 3, 12389128312, 92, 2] 987654)