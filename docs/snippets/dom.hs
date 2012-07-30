{-# LANGUAGE EmptyDataDecls #-}

main = do
  result <- documentGetElements "body"
  print result

print :: Foreign a => a -> Fay ()
print = foreignFay "console.log" ""

data Element
instance Foreign Element

documentGetElements :: String -> Fay [Element]
documentGetElements =
  foreignFay "document.getElementsByTagName"
             "array"
