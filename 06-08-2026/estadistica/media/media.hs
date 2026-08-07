myLength :: [Float] -> Int
-- En caso de ser la lista vacía la longitud es 0
myLength [] = 0
-- En caso de no ser la lista vacía, se suma 1 a la longitud de la cola
myLength (x : xs) = 1 + myLength xs

media :: [Float] -> Float
media [] = 0
media (x : xs) = suma (x : xs) / n
  where
    -- Subfunción dentro de la funcion "media"
    -- Define n como flotante a partir de la longitud del array (x:xs)
    n = fromIntegral (myLength (x : xs))
    -- Define la función suma para retornar la suma de los valores de (x:xs)
    suma :: [Float] -> Float
    suma [] = 0
    suma (d : ds) = d + suma (ds)

main :: IO ()
main = do
  print (media [2, 4, 5, 6, 1, 2, 3])
