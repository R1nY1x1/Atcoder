import Control.Applicative

div2 cnt xs
    | and (map even xs) = div2 (cnt + 1) $ map (flip div 2) xs
    | otherwise = cnt

main :: IO()
main = do
    _ <- getLine
    xs <- map (read :: String -> Int) . words <$> getLine
    putStrLn $ show $ div2 0 xs
