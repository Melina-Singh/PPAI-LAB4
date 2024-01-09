
{- Q2. Write a Haskell function to calculate the factorial of a 
non-negative integer using recursion.-}




factorial :: Integer -> Integer
factorial 0 = 0
factorial 1 = 1
factorial n = n* factorial(n-1)

main :: IO ()
main = do
    let n = 7
    putStrLn ("The factorial of number " ++ show n ++ " is = " ++ show (factorial n))