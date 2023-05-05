import Data.List
import Control.Applicative

main :: IO()
main = do
    inputs <- getContents
    let xs = [[read x :: Int | x <- words line] | line <- tail (lines inputs)]
    putStrLn $ show $ length $ nub $ xs
