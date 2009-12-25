import List
join s xs = foldl (++) "" (intersperse s xs)
