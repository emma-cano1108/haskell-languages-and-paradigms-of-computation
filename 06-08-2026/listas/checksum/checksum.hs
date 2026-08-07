import Data.Char (chr, ord)

-- Se recibe una cadena de caracteres (o String)
checksum :: [Char] -> Int
checksum [] = 0
-- Convierte a ASCII la cabeza de la lista y la suma a la misma funcion usada en el resto de la lista
-- Se está aplicando la función a cada "sublista" generada por la recursividad
-- Finalmente se suman todos los valores ASCII de cada carácter de la cadena de caracteres
checksum (x : xs) = ord (x) + checksum (xs)

main :: IO ()
main = do
  print (checksum ("Hola"))