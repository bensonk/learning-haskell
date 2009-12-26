-- Stylistically, it's nice to name the functional parts.  In this case, 
-- caesar can be broken up into two parts: 1) rotating a given character 
-- by n, and 2) mapping that rotation onto the string.  What you've done 
-- is really quite clean, but for maintainability it's nice to spearate
-- the rotation logic from the mapping logic.  See bk/caesar.hs for an 
-- example implementation.

caesar :: Int -> String -> String
caesar i [] = []
caesar i (x:xs) = toEnum(((fromEnum x + i - fromEnum('a')) `mod` 26) + fromEnum('a')) : caesar i xs


main = print(caesar 4 "abcyz")

