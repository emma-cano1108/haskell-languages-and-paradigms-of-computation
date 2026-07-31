esDivisible :: Int -> Int -> Bool
esDivisible a 0 = False
esDivisible a b = mod a b == 0

main :: IO ()
main = do
  print (esDivisible 8 5)
  print (esDivisible 9 3)
  print (esDivisible 10 0)