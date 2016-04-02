Ahora que ya dominamos los ingredientes, podemos armar tragos de buena calidad. 

Aunque en realidad queremos implementar **armadoras de tragos**. Una armadora está definida como:

``` Haskell
type Armadora = [Ingrediente] -> [Ingrediente]
```

Desarrollar las siguientes funciones para que puedan ser usadas como armadoras de tragos:

- **directo**: Los componentes del trago a armar son los mismos que los recibidos agregando un nuevo componente que es el hielo. Cada hielo ocupa 10 cc y la cantidad de hielos que debería llevar el trago se indica al momento de armarlo. Tené en cuenta que, en este caso, todos los hielos juntos forman un único ingrediente.

- **licuadora**: Los ingredientes finales del trago se consiguen poniéndole azúcar, agregando 5 hielos y batiendo (en ese orden). Al ponerle azúcar todos los ingredientes se condimentan con azucar (ya declarada en el sistema).

- **coctelera**: Se indica al hacer el trago si se sirve flambeado o no y cuántos segundos se debe agitar el trago antes de servirlo. 
En caso de que se sirva flambeado, el primer componente cambia perdiendo la mitad de su alcohol, volviéndose 2 unidades más dulces, 5 unidades más colorido y pierda un décimo de los segundos que se agita. 
De lo contrario, si la cantidad de segundos es par tiene el mismo efecto que hacerlo en licuadora, sino se sirve agregando 2 hielos.

> Para todos los casos, al agregar componentes se deben incluir al inicio de la lista resultante.
