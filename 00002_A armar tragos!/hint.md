Para los casos que tengamos que operar sobre números de distintos tipos, existe la función:

```Haskell
fromIntegral :: (Integral a, Num b) => a -> b
```

que transforma un tipo Int (o Integer) en algo numérico.