main :: IO()
main = do
  [r, g, b] <- map read . words <$> getLine
  putStrLn $ show $ r + 1
