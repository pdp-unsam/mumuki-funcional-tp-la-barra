Antes de saber armar los tragos, es necesario tener un buen manejo de sus **ingredientes**. 

Para ello se ofrece un tipo de dato compuesto por nombre, dulzura, alcohol, color y la cantidad (en centímetros cúbicos) y sus respectivos _getters_:

```Haskell
data Ingrediente = UnIngrediente String Float Float Float Float deriving (Show,Eq)

dulzura (UnIngrediente _ dul _ _ _)   = dul
alcohol (UnIngrediente _ _ alc _ _)   = alc
color   (UnIngrediente _ _ _ col _)   = col
cant    (UnIngrediente _ _ _ _ cant)  = cant
```

Algunos ejemplos son:
```Haskell
vodka10   = UnIngrediente "vodka" 10  55 0 10

vodka50   = UnIngrediente "vodka" 10  55 0 50

vodka100  = UnIngrediente "vodka" 10  55 0 100

speed80   = UnIngrediente "speed" 30 1 10 80

fernet20  = UnIngrediente "fernet" 10 10 50 20

fernet50  = UnIngrediente "fernet" 10 10 50 50

hielo30   = UnIngrediente "hielo" 0 0 0 30

coca50    = UnIngrediente "cocaCola" 100  0 80 50

naranja50 = UnIngrediente "jugoDeNaranja" 70  0 30 50
```

Se pide:
- Poder **condimentar/2** un ingrediente. Esto significa que dado un ingrediente y un condimento, modifica el los atributos del ingrediente al _punto medio_ entre el valor actual y el del condimento.

Un condimento es una tri-upla son los niveles de dulzura, alcohol y color respectivamente. Algunos ejemplos podrían ser:
```Haskell
type Condimento = (Float, Float, Float)

azucar = (80, 5, 0) :: Condimento
colorante = (15, 0, 100) :: Condimento
```

- Poder **mezclar/2** un ingrediente con muchos otros. Al hacer esto el ingrediente se condimenta con los valores máximos, para cada atributo (dulzura, alcohol y color), de los otros ingredientes. Dicho en otras palabras, el ingrediente a mezclar que se va a condimentar tomando como atributos del condimento el más alto entre todos los valores de los otros ingredientes.

- Poder **batir/1** muchos ingedientes entre si. Quiere decir que cada ingrediente se va a mezclar con todo el resto.

