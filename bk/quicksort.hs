qsort [] = []
qsort (x:xs) = [ y | y <- xs, y < x ] ++ [x] ++ [ y | y <- xs, y >= x ]
