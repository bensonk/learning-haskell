import List
splitAtAll [] xs = [xs]
splitAtAll (p:ps) xs = chunk : (splitAtAll (map (\x -> x-(p+1)) ps) (drop 1 rest))
  where (chunk, rest) = (splitAt p xs)
split c xs = splitAtAll (findIndices (\x -> x == c) xs) xs
