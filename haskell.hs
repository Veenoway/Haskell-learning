import Data.List
import System.IO
import Prelude
-- Int -2^63 2^63
maxInt = maxBound :: Int

main :: IO()
main = putStrLn "Hello World"

always5 :: Int 
always5 = 5
sumOfNums = sum[1..1000]
addEx = 5 + 4
subEx = 5-4
multEx = 5*4
divEx = 5/4
modEx = mod 8 4
negNumb = 5 + (-4)

-- sqrt need float number
num9 = 9 :: Int
-- sqrt0f9 = sqrt (fromIntergral num9)

--  Math Functions 
piValue = pi
expodentiel9 = exp 9
logOf9 = log 9
squared9 = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999
tureAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True)


-- ARRAY
primeNumbers = [5,4,32,4]
morePrimes = primeNumbers ++ [14,25,36] -- Add value at the end
favNums = 2 : 7 : 32: [] 
multiList = [[3,4,5,56],[3,6,44,3]]
morePrimes2 = 2 : primeNumbers -- Add value from the start of the array
lengthPrime = length morePrimes2 
reversePrime = reverse morePrimes2
isArrayEmpty = null morePrimes2
secondPrime = morePrimes2 !! 1 -- Return the value of index 1 
firstPrime = head morePrimes2
lastPrime = last morePrimes2
primeInit = init morePrimes2 -- return array without the last value
first3Prime = take 3 morePrimes2 -- return the 3 first value of the array
removePrimes = drop 3 morePrimes2 --return the array without the 3 first values
is7inList = 7 `elem` morePrimes2 -- if 7 in the list return True
maxPrime = maximum morePrimes2 -- return the highest value in the list
-- minPrime = minimum minPrimes2 -- return the lower // // //

-- CREATE RANGE
zeroToTen = [0..10]
evenList =[2,4..20] -- return array 2 to 20 with pair numbers
letterList = ["A","C".."Z"]

-- Exercice 

ovenTime :: Integer
ovenTime = 40;

prepTime :: Integer -> Integer
prepTime numOfLayers = 2 * numOfLayers

elapsedTimeInMinutes :: Integer -> Integer -> Integer
elapsedTimeInMinutes numOfLayers ovenTime = prepTime numOfLayers + ovenTime
elapsedTimeInMinutes' :: Integer -> Integer -> Integer
elapsedTimeInMinutes' numOfLayers ovenTime = prepTime numOfLayers + ovenTime

-- Exercice 1 : Expressions de liste. Une liste s’écrit entre crochets, avec les éléments de la liste séparés par
-- des virgules.
-- 1. Rappelez ce que font les opérateurs [],:,++,.. et les fonctions head, tail, reverse.
-- 2. Évaluez les expressions de liste suivantes :
-- (a) 1:[2]
-- (b) [3,4]++[1,2]
-- (c) [3..10]
-- (d) tail [1..4] ++ 5:[]
-- (e) head [1..4] : [5]
-- (f) reverse [1..4] ++ [5]