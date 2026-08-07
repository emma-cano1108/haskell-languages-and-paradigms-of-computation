-- Se generaliza para aceptar arreglos de cualquier tipo
myGeneralLength :: [a] -> Int
myGeneralLength [] = 0
myGeneralLength (x : xs) = 1 + myGeneralLength xs

main :: IO ()
main = do
  print (myGeneralLength [1, 2, 3, 4, 5, 6, 7, 8])
  print (myGeneralLength ["a", "b", "c"])
  -- Los strings se manejan también como arreglos
  print (myGeneralLength "Hola Mundo")