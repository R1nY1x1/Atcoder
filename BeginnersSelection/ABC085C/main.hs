import Control.Applicative
import Data.List

isNull [] = [-1, -1, -1]
isNull xs = head xs

main :: IO()
main = do
    n:y:_ <- map (read::String->Int) . words <$> getLine 
    {-
    let xs = [[tth, fth, th]
           | tth <- [0..(min n $ min 2000 $ div y 10000)]
             , fth <- [0..(min (n - tth) $ min 2000 $ div y 5000)]
             , th <- [(n - (tth + fth))]
           , 10000*th+5000*fth+1000*tth == y
           ]
    if length xs > 0
        then
            -- putStrLn $ show $ map show $ head xs
            putStrLn $ (show $ head xs !! 0)++" "++(show $ head xs !! 1)++" "++(show $ head xs !! 2)
        else 
            putStrLn $ "-1 -1 -1"
    -}
    let xs = [[tth, fth, th]
           | tth <- [0..n]
             , fth <- [0..(n - tth)]
             , th <- [(n - (tth + fth))]
           , 10000*th+5000*fth+1000*tth == y
           ]
    putStrLn $ unwords $ map show $ isNull xs
