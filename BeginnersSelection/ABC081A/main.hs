main :: IO()
main = do
    s <- getLine
    putStrLn $ show . sum $ [(read :: String -> Int) [si] | si <- s]
    -- print . length . filter (=='1')
