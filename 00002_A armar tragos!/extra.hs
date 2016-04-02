condimentar (UnIngrediente nom dul alc col cant) (maxAz, maxAlc, maxCol) = UnIngrediente nom (medio maxAz dul) (medio maxAlc alc) (medio maxCol col) cant

medio n m = (n + m) / 2


mezclar ingrediente = condimentar ingrediente . condimentos

condimentos ingredientes = (maximoSegun dulzura ingredientes, maximoSegun alcohol ingredientes, maximoSegun color ingredientes)

maximoSegun f = maximum . map f


batir ingredientes = map (\i -> mezclar i (filter (/= i) ingredientes)) ingredientes
