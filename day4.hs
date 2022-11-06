import Distribution.FieldGrammar (List)
import Distribution.Compat.CharParsing (CharParsing(string))
greeting :: String  -> String;
greeting name = "Hello , " ++ name ++ " how are you today ?"

removeExclamationMarks :: String -> String
removeExclamationMarks str = [ c | c <- str, c /= '!']; -- /= == !== 

    -- Or we can use filter method 
removeExclamation :: String -> String
removeExclamation = filter (/='!')

getOdd :: [Int] -> [Int]
getOdd  = filter odd

-- show === return element to string
-- read === return string to int => read "6" :: Int

sumStr :: String -> String -> String
sumStr a b = show ((read a :: Int) + (read b :: Int))

-- 

sumStr' :: String -> String -> String
sumStr' a b = show $ readInt a + readInt b -- everything on the right of $ will be take first
readInt :: String -> Int
readInt = read