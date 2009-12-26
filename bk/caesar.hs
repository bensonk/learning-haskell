import Char
do_rotate n val base = (val + n - base) `mod` 26 + base
rot n c 
 | isLower c = chr (do_rotate n (ord c) (ord 'a'))
 | isUpper c = chr (do_rotate n (ord c) (ord 'A'))
 | otherwise = c
caesar n str = map (\c -> rot n c) str
