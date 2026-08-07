import Distribution.Simple.Program.Builtin (doctestProgram)
import GHC.Exts.Heap (GenClosure (FloatClosure))

myLength :: [Float] -> Int
myLength [] = 0
myLength (x : xs) = 1 + myLength xs

media :: [Float] -> Float
media [] = 0
media (x : xs) = suma (x : xs) / n
  where
    n = fromIntegral (myLength (x : xs))
    suma :: [Float] -> Float
    suma [] = 0
    suma (d : ds) = d + suma (ds)

desviacion :: [Float] -> Float
desviacion [] = 0
desviacion (x : xs) = sqrt ((datos_escalados (x : xs) m) / n)
  where
    n = fromIntegral (myLength (x : xs))
    m = media (x : xs)
    suma_acumulativa :: [Float] -> Float
    suma_acumulativa [] = 0
    suma_acumulativa (d : ds) = d + suma_acumulativa (ds)
    datos_escalados :: [Float] -> Float -> Float
    datos_escalados [] _ = 0
    datos_escalados (d : ds) _ = (d - m) ** 2 + datos_escalados (ds) m

main :: IO ()
main = do
  print (desviacion [1, 2])
