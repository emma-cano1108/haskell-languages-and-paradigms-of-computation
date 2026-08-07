main :: IO ()
main = do
  print ([x | x <- [0 .. 100], mod x 31 == 0, x < 80])