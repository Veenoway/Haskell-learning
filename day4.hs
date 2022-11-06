import Distribution.FieldGrammar (List)
greeting :: String  -> String;
greeting name = "Hello , " ++ name ++ " how are you today ?"

removeExclamationMarks :: String -> String
removeExclamationMarks str = [ c | c <- str, c /= '!']; -- /= == !== 

    -- Or we can use filter method 
removeExclamation :: String -> String
removeExclamation = filter (/='!')

getOdd :: [Int] -> [Int]
getOdd  = filter odd