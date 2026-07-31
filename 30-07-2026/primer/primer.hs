-- Firma de tipo, define el tipo de parámetros y el de retorno
fn_producto :: Float -> Float -> Float
-- Definición de primer caso
fn_producto 0 y = 0
-- Definición de segundo caso
fn_producto x y = x * y

-- La función main es el punto de entrada del programa
main :: IO ()
-- Se señala que el bloque de código a ejecutar es una secuencia de instrucciones
main = do
  -- Uso de "instancia" de la función según corresponda a partir del pattern matching
  -- Usa fn_producto del segundo caso (parametros de la forma x y)
  print (fn_producto 3 5)
  -- Usa fn_producto del primer caso (parametros de la forma 0 y)
  print (fn_producto 0 3)
