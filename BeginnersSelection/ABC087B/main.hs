import Control.Applicative

main :: IO()
main = do 
    a <- (read :: String -> Int) <$> getLine
    b <- (read :: String -> Int) <$> getLine
    c <- (read :: String -> Int) <$> getLine
    x <- (read :: String -> Int) <$> getLine
    print $ length $ [(na, nb, nc)
                     | na <- [0..a], nb <- [0..b], nc <- [0..c]
                     , x == 500 * na + 100 * nb + 50 * nc
                     ]
