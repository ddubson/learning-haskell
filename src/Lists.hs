main :: IO ()
main = do
    let nums = [1,2,3,4,5,6]
    print nums

    print ([1,2,3,4] ++ [4,5,6,7])
    print ("hello" ++ "world")

    print ('A':" SMALL DOG")