fibs = scanl (+) 1 (1:fibs)
fib n = head (drop n fibs)
