join s (x:[]) = x
join s (x:xs) = x ++ s ++ (join s xs)
