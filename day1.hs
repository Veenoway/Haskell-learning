import Data.List ( sort, reverse )

x :: [Char]
x = "Hello bro!"

-- 1.a
evenOrOdd :: Integral a => a -> [Char]
-- evenOrOdd n = if div n 2 == 0 then "Even" else "Odd"
evenOrOdd n = if even n then "Even" else "Odd"

-- 1.b
evenOrOddB :: Integral a => a -> [Char]
evenOrOddB n 
    | odd n = "Even"
    | even n = "Odd"

threeOrNine :: (Ord a, Num a, Num p) => a -> p
threeOrNine n 
    | n < 0 = 3
    | n < 5 = 9
    | otherwise = 10

-- 2.a
-- bmi = body mass index => weight / height²
bmi :: Float -> Float -> String
bmi w h  
    | bmi_calc <= 18.5 = "Underweight"
    | bmi_calc <= 25.0 = "Normal"
    | bmi_calc <= 30.0 = "Overweight"
    | otherwise = "Obese"
    where bmi_calc = w/h^2

-- 3.a

+---+                                       +---+
+---++---+     +---+              +---++---++---+
|   ||   |     |   |   -->        |   ||   ||   |
+---++---+     +---+              +---++---++---+
+---++---++---++---+         +---++---++---++---+
|   ||   ||   ||   |         |   ||   ||   ||   |
+---++---++---++---+         +---++---++---++---+

gravityFlip :: Char -> [Int] -> [Int]
gravityFlip d xs 
    | d == "R" = sort xs
    | otherwise = reverse(sort xs)