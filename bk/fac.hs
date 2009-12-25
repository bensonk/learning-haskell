facs = scanl (*) 1 [1..]
fac n = head (drop n facs)
