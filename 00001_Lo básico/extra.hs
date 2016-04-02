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

-- dulzura, alcohol, color
type Condimento = (Float, Float, Float)

type Armadora = [Ingrediente] -> [Ingrediente]

-- Ejs --

vodka10   = UnIngrediente "vodka" 10  55 0 10
vodka50   = UnIngrediente "vodka" 10  55 0 50
vodka100  = UnIngrediente "vodka" 10  55 0 100
speed80   = UnIngrediente "speed" 30 1 10 80
fernet20  = UnIngrediente "fernet" 10 10 50 20
fernet50  = UnIngrediente "fernet" 10 10 50 50
hielo30   = UnIngrediente "hielo" 0 0 0 30
coca50    = UnIngrediente "cocaCola" 100  0 80 50
naranja50 = UnIngrediente "jugoDeNaranja" 70  0 30 50

azucar = (80, 5, 0) :: Condimento
colorante = (15, 0, 100) :: Condimento

fernerConCoca   = UnTrago "Branca" [ hielo30, fernet50, coca50]
destornillador  = UnTrago "Destornillador" [hielo30, naranja50, vodka50]
speedConVodka   = UnTrago "Speed con vodka" [ vodka10,  speed80]
puroVodka       = UnTrago "Vodka" [ hielo30,  vodka100]
vodkaMenta      = UnTrago "Vodka Menta" [ vodka50,  fernet20 ]

charlySheen = UnaPersona "charly" 98 50 [ puroVodka , fernerConCoca ]
chuckNorris = UnaPersona "chuck" 100 0 [ vodkaMenta ]
funesMori   = UnaPersona "el memorioso" 0 75 [ speedConVodka ]

-------------------


batirIngredientes = batir . ingredientes