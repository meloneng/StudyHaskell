fatorial :: Int -> Int
fatorial n
    | n == 0 = 1
    | otherwise = n * fatorial (n-1)

seila :: Int -> Int -> Int
seila x y
    | x < y = x * seila (x+1) (y-1) * y
    | otherwise = 0