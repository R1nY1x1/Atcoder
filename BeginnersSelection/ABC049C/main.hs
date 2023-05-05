import Control.Applicative

drops "" = "YES"
drops ('m':'a':'e':'r':'d':xs) = drops xs
drops ('r':'e':'m':'a':'e':'r':'d':xs) = drops xs
drops ('e':'s':'a':'r':'e':xs) = drops xs
drops ('r':'e':'s':'a':'r':'e':xs) = drops xs
drops _ = "NO"

main :: IO()
main = do
    s <- getLine
    putStrLn $ drops $ reverse s
