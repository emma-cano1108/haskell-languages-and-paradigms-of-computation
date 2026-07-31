esMayor :: Int -> Int -> Bool
esMayor a b = a > b

main :: IO ()
main = do
  print (esMayor 5 3)
  print (esMayor 3 10)
