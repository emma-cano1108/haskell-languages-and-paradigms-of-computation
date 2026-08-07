sumar1 :: Int -> Int
sumar1 x = x + 1

-- Recibe una función como parámetro
sumarVec :: (Int -> Int) -> [Int] -> [Int]
sumarVec _ [] = []
-- Aplica la función f a x, y la concatena con la recursividad en xs.
sumarVec f (x : xs) = f (x) : sumarVec f xs

main :: IO ()
main = do
  print (sumarVec sumar1 [2, 4, 5, 6])