import Control.Applicative

isEven 0 = "Even"
isEven _ = "Odd"

main :: IO()
main = do
    [a, b] <- map read . words <$> getLine
    -- putStrLn $ (\x -> if x == 1 then "Odd" else "Even") $ mod (a * b) 2
    -- if (a * b) `mod` 2 == 0 then putStrLn "Even" else putStrLn "odd"
    putStrLn $ isEven $ mod (a * b) 2
