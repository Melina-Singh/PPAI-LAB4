
{- Q6. FibonacciSequence using indirect Recursion-}



fibEven :: Int -> [Int]
fibEven n
  | n <= 0    = []
  | n == 1    = [0]
  | otherwise = fibOdd (n - 1)

fibOdd :: Int -> [Int]
fibOdd n
  | n <= 0    = []
  | n == 1    = [1]
  | otherwise = nexterm : fibEven (n - 1)
  where
    nexterm = sum (fibEven (n - 2) ++ fibOdd (n - 2))

main :: IO ()
main = do
  putStrLn "Enter the value of n:"
  input <- getLine
  let n = read input :: Int
  let fibonacciSequence = fibOdd n
  putStrLn $ "Fibonacci sequence up to the " ++ show n ++ "th term: " ++ show fibonacciSequence
