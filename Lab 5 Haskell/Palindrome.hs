{-Q5. palindrome using direct recursion -}




isPalindrome :: String -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome (x:xs) =
    x == lastChar && isPalindrome middleChars
    where
        lastChar = last xs
        middleChars = init xs

main :: IO ()
main = do
    putStrLn "Enter a string:"
    input <- getLine  -- Get input from the user
    let result = isPalindrome input
    putStrLn $ "Is \"" ++ input ++ "\" a palindrome? " ++ show result
