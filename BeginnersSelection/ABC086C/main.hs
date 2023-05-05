import Control.Monad
import Control.Applicative

main = do
    n <- readLn
    xs <- replicateM n $ map (read::String->Int) . words <$> getLine
    putStrLn $ if analyze ([0,0,0]:xs) then "Yes" else "No"

analyze [a,b] = reachable a b
analyze (a:b:xs) = reachable a b && analyze (b:xs)

reachable [t1,x1,y1] [t2,x2,y2] = 
    (dist <= dt) && ((dt - dist) `mod` 2 == 0)
    where dist = (abs(x2 - x1) + abs(y2 - y1)); dt = t2 - t1
