greeting :: String  -> String;
greeting name = "Hello , " ++ name ++ " how are you today ?"

removeExclamationMarks :: String -> String
removeExclamationMarks str = [ c | c <- str, c /= '!'];
