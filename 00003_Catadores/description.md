Bien! Ya casi terminamos. Solo nos queda servirles los tragos a los clientes para que los tomen.

Para ello se definieron los siguientes tipos y funciones:

```Haskell
data Trago = UnTrago String [Ingrediente] deriving (Show,Eq)

ingredientes (UnTrago _ ingredientes) = ingredientes


data Persona = UnaPersona String Float Float [Trago] deriving (Show,Eq)

resistencia (UnaPersona _ res _ _)  = res
ebriedad    (UnaPersona _ _ ebr _)  = ebr
tragos      (UnaPersona _ _ _ trgs) = trgs

```

Algunos ejemplos son:

```Haskell
fernerConCoca   = UnTrago "Branca" [ hielo30, fernet50, coca50]
destornillador  = UnTrago "Destornillador" [hielo30, naranja50, vodka50]
speedConVodka   = UnTrago "Speed con vodka" [ vodka10,  speed80]
puroVodka       = UnTrago "Vodka" [ hielo30,  vodka100]
vodkaMenta      = UnTrago "Vodka Menta" [ vodka50,  fernet20 ]


charlySheen = UnaPersona "charly" 98 50 [ puroVodka , fernerConCoca ]
chuckNorris = UnaPersona "chuck" 100 0 [ vodkaMenta ]
funesMori   = UnaPersona "el memorioso" 0 75 [ speedConVodka ]
```

Los tragos están compuesto por un nombre y una lista de ingredientes. Y las personas por un nombre, nivel de resistencia alchólica, nivel de ebriedad y una lista de tragos tomados.

Se pide:

- Definir las **armadorasDeLaCasa/0** que es una lista con todas las armadoras que ofrece la barra. Ellas son, **en orden**:
  - directo con 10 hielos,
  - licuadora
  - directo con 5 hielos,
  - coctelera flambeada y agitada 10 segundos
  - y cocteleras sin flambear agitándolas todos los segundos posibles

- Definir **beber/2** que dada una persona y un trago retorna a la persona agregando el trago a los tragos que tomó, aumentando en 2 su resistencia y aumentando su ebriedad en la cantidad de escabio del trago. La cantidad de escabio de un trago está dado por el promedio del alcohol de sus ingredientes.

- Definir **degustar/3** que dada una persona, un trago a preparar y una cantidad de armadoras de tragos, retorna a la persona resultante luego de tomar todos los tragos preparados con las primeras N armadoras de la casa.
