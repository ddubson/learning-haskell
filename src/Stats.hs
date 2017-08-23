readInts :: String -> [Int]
readInts s = let ws = words s in (map read ws)

minMax :: Ord a => [a] -> Maybe (a, a)
minMax (h : t) = Just $ foldr
    (\x (min, max) -> (if x < min then x else min, if x > max then x else max))
    (h, h)gh
    t
minMax _ = Nothing


main :: IO ()
main = do
    content <- readFile "assets/numbers.txt"
    let values = readInts content
        total = sum values
        range = minMax values
    print total
    print range