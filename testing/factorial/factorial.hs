factorial :: Int -> Int
factorial 0 = 1
-- Retornar 0 en caso de ingresar un numero negativo
factorial a | a < 0 = 0
factorial a = a * factorial (a - 1)

main :: IO ()
main = do
  print (factorial 5)
  print (factorial 2)
  print (factorial (-1))
  print (factorial 20)