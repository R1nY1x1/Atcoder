import Data.List
import Control.Applicative

choiceI f xs = [x | (i, x) <- zip [0..] xs, f i]

main :: IO()
main = do
    getLine
    xs <- map (read::String->Int) . words <$> getLine
    let sortedXs = reverse . sort $ xs
    putStrLn $ show $ (-) (sum $ choiceI even sortedXs) (sum $ choiceI odd sortedXs)
    -- print $ sum $ zipWith (*) (cycle [1, -1]) $ reverse $ sort xs
