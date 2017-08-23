main :: IO ()
main = do
    content <- readFile "assets/numbers.txt"
    putStrLn content
    print content