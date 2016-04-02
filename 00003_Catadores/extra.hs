avg nums = sum nums / (fromIntegral . length) nums



condimentar (UnIngrediente nom dul alc col cant) (maxAz, maxAlc, maxCol) = UnIngrediente nom (medio maxAz dul) (medio maxAlc alc) (medio maxCol col) cant

medio n m = (n + m) / 2

mezclar ingrediente = condimentar ingrediente . condimentos

condimentos ingredientes = (maximoSegun dulzura ingredientes, maximoSegun alcohol ingredientes, maximoSegun color ingredientes)

maximoSegun f = maximum . map f

batir ingredientes = map (\i -> mezclar i (filter (/= i) ingredientes)) ingredientes



directo cantHielos = (:) (hielo (cantHielos * 10))

hielo = UnIngrediente "hielo" 0 0 0

licuadora = batir . directo 5 . agregarAzucar

agregarAzucar = map (flip condimentar azucar)

coctelera esFlambeado seg
  | esFlambeado = flambear seg
  | even seg    = licuadora
  | otherwise   = directo 2

flambear seg (UnIngrediente nom dul alc col cant : ingredientes) = (UnIngrediente nom (dul+2) (alc/2) (col+5) (cant - cantPerdida seg ) : ingredientes)

cantPerdida = fromIntegral . flip div 10
