-- Calculate the fibonacci sequence

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

main :: IO()
main = print(fib 8)