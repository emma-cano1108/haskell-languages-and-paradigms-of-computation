myLength :: [Float] -> Int
-- En caso de ser la lista vacía la longitud es 0
myLength [] = 0
-- En caso de no ser la lista vacía, se suma 1 a la longitud de la cola
myLength (x : xs) = 1 + myLength xs

main :: IO ()
main = do
  print (myLength ([2.0, 4.5, 5.6, 1.0]))