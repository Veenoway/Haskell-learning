in_range :: Int -> Int -> Int -> Bool
in_range min max x = 
    x >= min && x <= max
-- To save the result in a variable

in_range' :: Int -> Int -> Int -> Bool
in_range' min max x = 
    let in_lower_bound = min <= x
        in_upper_bound = max >= x
    in in_lower_bound && in_upper_bound

-- :t return the type of an expression or function 
-- add () for operator ex : :t (+)