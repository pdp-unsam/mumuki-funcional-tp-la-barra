-- nombre, dulzura, alcohol, color y cantidad en centimetros cubicos (cc)
data Ingrediente = UnIngrediente String Float Float Float Float  deriving (Show,Eq)

dulzura (UnIngrediente _ dul _ _ _) = dul
alcohol (UnIngrediente _ _ alc _ _) = alc
color (UnIngrediente _ _ _ col _)   = col
cant (UnIngrediente _ _ _ _ cant)   = cant

-- nombre e ingredientes
data Trago = UnTrago String [Ingrediente] deriving (Show,Eq)

ingredientes (UnTrago _ ingredientes) = ingredientes

-- nombre, resistencia, ebriedad y los tragos tomados
data Persona = UnaPersona String Float Float [Trago] deriving (Show,Eq)

resistencia (UnaPersona _ res _ _) = res
ebriedad (UnaPersona _ _ ebri _) = ebri
tragos (UnaPersona _ _ _ tragos) = tragos
