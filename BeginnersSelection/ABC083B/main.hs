import Control.Applicative

main :: IO()
main = do
    [n, a, b] <- map (read :: String -> Int) . words <$> getLine
    {-
    let l = [[tth, th, h, t, o]
            | tth <- [0..9], th <- [0..9], h <- [0..9], t <- [0..9], o <- [0..9]
            ]
    let l' = filter (\xs -> (sum $ xs) >= a && (sum $ xs) <= b) l
    let strl = map (\[tth, th, h, t, o] -> (show tth) ++ (show th) ++ (show h) ++ (show t) ++ (show o)) l'
    putStrLn $ show $ sum . filter (<= n) $ map (read :: String -> Int) strl
    -}
    print $ sum [k | k <- [1..n], evaluate k >= a, evaluate k <= b]

evaluate k = sum [read [c] | c <- show k]
