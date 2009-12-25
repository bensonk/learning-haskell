-- pretty much copied from a haskell 98 tutorial
quicksort [] = []
quicksort (x:xs) = quicksort [ y | y <- xs, y < x ]
                ++ [x]
                ++ quicksort [ y | y <- xs, y >= x ]


--main = print(quicksort [1,5,9,7,4,3,0,8,7,6,3,4,998,3,4,554,43])
main = print(quicksort "the quick brown fox jumps over the lazy dog") -- Because strings are just lists of chars
