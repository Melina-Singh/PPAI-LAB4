-- Problem 1: Pure Functions

calculatePower :: Integer -> Integer -> Integer
calculatePower base exponent = base ^ exponent

-- Problem 2: Recursion
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Problem 3: Higher-Order Functions
applyFunction :: (Integer -> Integer) -> [Integer] -> [Integer]
applyFunction _ [] = []
applyFunction f (x:xs) = f x : applyFunction f xs

-- Problem 4: Putting It All Together
main :: IO ()
main = do
  --  base and exponent --
  
  putStrLn "Enter base:"
  baseStr <- getLine          --taking input from the user
  let base = read baseStr :: Integer

  putStrLn "Enter exponent:"
  exponentStr <- getLine
  let exponent = read exponentStr :: Integer


  -- Calculate and print the result 
  let powerResult = calculatePower base exponent
  putStrLn $ "Result of " ++ show base ++ " ^ " ++ show exponent ++ ": " ++ show powerResult

   -- going to next --



  -- for a non-negative number --
  putStrLn "Enter a non-negative number:"
  integerStr <- getLine
  let enteredInteger = read integerStr :: Integer

  -- Calculate and print the factorial of the entered integer
  let factorialResult = factorial enteredInteger
  putStrLn $ "Factorial of " ++ show enteredInteger ++ ": " ++ show factorialResult

  -- Allow the user to input a list of integers (comma-separated)
  putStrLn "Enter a list of integers (comma-separated):"
  listStr <- getLine
  let integerList = map read (wordsWhen (== ',') listStr) :: [Integer]

  -- Apply a custom function (squared in this case) to each element of the list
  let squaredList = applyFunction (\x -> x * x) integerList
  putStrLn $ "Squared list: " ++ show squaredList

-- Helper function to split a string based on a delimiter
wordsWhen :: (Char -> Bool) -> String -> [String]
wordsWhen p s = case dropWhile p s of
  "" -> []
  s' -> w : wordsWhen p s''
    where (w, s'') = break p s'
