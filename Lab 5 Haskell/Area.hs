
{- Q4. Create a custom data type representing geometric shapes 
(e.g., Circle, Square) and implement a function to calculate their areas.  -}


data Shape = Circle Double | Square Double

-- Function to calculate the area of a shape
calculateArea :: Shape -> Double
calculateArea (Circle radius) = pi * radius * radius
calculateArea (Square side) = side * side


main :: IO ()
main = do
  let circlee = Circle 5
      squaree = Square 8

  putStrLn ("Area of Circle: " ++ show (calculateArea circlee))
  putStrLn ("Area of Square: " ++ show (calculateArea squaree))
