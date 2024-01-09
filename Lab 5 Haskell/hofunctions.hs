{- Q3. Implement a higher-order function that takes a 
list of integers and a function, and applies the function to each element of the list.-}

applyFunctionToList :: (a -> b) -> [a] -> [b]
applyFunctionToList f list = map f list


square :: Int -> Int
square x = x * x

main :: IO ()
main = do
  let myList = [1, 2, 3, 4, 5]
  let squaredList = applyFunctionToList square myList
  putStrLn ("Original List: " ++ show myList)
  putStrLn ("Squared List: " ++ show squaredList)

