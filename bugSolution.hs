The `head` function throws an error when it receives an empty list. Here's the solution that prevents this error using pattern matching:

```haskell
myFunction :: [Int] -> Maybe Int
myFunction [] = Nothing
myFunction (x:_) = Just x

main :: IO ()
main = do
  let emptyList = []
  let nonEmptyList = [1, 2, 3]
  print (myFunction emptyList) -- Output: Nothing
  print (myFunction nonEmptyList) -- Output: Just 1
```

Alternatively, the `maybe` function can be used to provide a default value when the list is empty:

```haskell
myFunction :: [Int] -> Int
myFunction xs = maybe 0 head xs

main :: IO ()
main = do
  let emptyList = []
  let nonEmptyList = [1, 2, 3]
  print (myFunction emptyList) -- Output: 0
  print (myFunction nonEmptyList) -- Output: 1
```