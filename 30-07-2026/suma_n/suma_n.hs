sumarN :: Int -> Int
sumarN 0 = 0
sumarN n = n + sumarN (n - 1)

main :: IO ()
main = do
  print (sumarN 50)