# Sistema de gestión de pedidos para un restaurante

Proyecto del Momento Evaluativo 1 de la materia Lenguaje de Programación para APPs (UCC).

**Estudiante:** Alexander Pino Caro

## Descripción

Aplicación de consola desarrollada en Dart que permite administrar los pedidos de un restaurante.
Desde un menú, el usuario puede:

- Registrar un nuevo pedido.
- Consultar todos los pedidos registrados.
- Buscar un pedido.
- Modificar un pedido existente.
- Eliminar un pedido.
- Ver un resumen con información de las ventas.

## Cómo ejecutar el proyecto

**Requisitos:** tener instalado el SDK de Dart.

1. Clonar el repositorio:
```
git clone https://github.com/El-Axel/gestion_pedidos_restaurante.git
```
2. Entrar a la carpeta del proyecto:
```
cd gestion_pedidos_restaurante
```
3. Ejecutar el programa:
```
dart run
```
4. Usar el menú escribiendo el número de la opción y presionando Enter.

## Estructura del proyecto

----
bin/gestion_pedidos_restaurante.dart  → menú principal (while y switch)
lib/gestion_pedidos.dart              → carta (Map), pedidos (List), clientes (Set) y funciones
lib/pedido.dart                       → clase Pedido
----

- **List** `pedidos`: guarda todos los pedidos registrados.
- **Set** `clientes`: guarda los nombres de los clientes sin repetir.
- **Map** `carta`: relaciona cada plato con su precio.

## Investigación: clases y objetos


Primero hice la investigación, la puse en práctica y ahí sí ya entendí. Por eso, para estas descripciones usaré como ejemplo mi desarrollo, porque es la forma más fácil y sencilla en la que pude entenderlo.

### ¿Qué es una clase?
Una clase es la agrupación de varios datos que suelen estar separados o regados. En el caso de este ejercicio del restaurante, el pedido completo tiene el nombre, el plato, la cantidad y el precio, datos que normalmente se escriben por separado, pero una clase los agrupa. La clase funciona como un molde: dice qué datos y qué acciones tendrá cada pedido.

**En mi proyecto:** la clase está en `lib/pedido.dart`.

    class Pedido {

### ¿Qué es un objeto?
Un objeto es lo que se genera a la hora de ejecutar el programa a partir de la clase. En mi ejemplo del restaurante, el objeto sería un pedido nuevo que ingresa un cliente, con sus datos reales.

**En mi proyecto:** en `lib/gestion_pedidos.dart`, dentro de `registrarPedido()`, se crea el objeto `nuevoPedido`. Cada pedido que se guarda en la lista `pedidos` es un objeto distinto.

    Pedido nuevoPedido = Pedido(contadorPedidos, nombreCliente, mesa, plato, cantidad, precioUnitario);

### ¿Cuál es la diferencia entre una clase y un objeto?
La clase define cómo es la información y el objeto se genera a la hora de ejecutar la función, ya con los datos llenos. La clase es una sola (`Pedido`), pero con ella se pueden crear muchos objetos, cada uno con sus propios datos, por ejemplo el pedido de Juan y el pedido de Ana.

### ¿Qué es un atributo?
Los atributos son lo que compone a las clases. En mi ejemplo, la clase es `Pedido` y los atributos son el nombre, el plato, el precio, etc.

**En mi proyecto:** en `lib/pedido.dart` los atributos son `numero`, `nombreCliente`, `mesa`,
`plato`, `cantidad`, `precioUnitario` y `estado`.

### ¿Qué es un método?
El método es una función que hace parte de las clases y ayuda a definir acciones o comportamientos que pueden realizar los objetos de una clase.

**En mi proyecto:** en `lib/pedido.dart` están `calcularTotal()`, que devuelve la cantidad por el precio, y `mostrarInformacion()`, que imprime los datos del pedido y se usa en
`listarPedidos()`.

### ¿Para qué sirve un constructor?
El constructor sirve para iniciar un nuevo objeto de una clase y ponerle sus datos iniciales.

**En mi proyecto:** en `lib/pedido.dart`

    Pedido(this.numero, this.nombreCliente, this.mesa, this.plato, this.cantidad, this.precioUnitario);


## Bitácora de desarrollo

- **12 de octubre:** creación del proyecto, repositorio en GitHub y README inicial.
- **13 de octubre:** creé el menú principal con while y switch, la carta del restaurante con un Map, la clase Pedido con sus atributos, constructor y métodos, y las opciones de registrar y listar pedidos usando una List. Encontré un problema: si el usuario escribe letras en el menú, el programa se cae con FormatException (pendiente por corregir).
- **14 de octubre:** corregí el problema del FormatException que encontré el día anterior, cambiando int.parse por int.tryParse con una función leerEntero. Al probarlo me di cuenta de que si el plato no existía, el programa me devolvía al menú y se perdían los datos, así que lo cambié de un if a un while para que vuelva a preguntar. También validé que la mesa y la cantidad sean mayores que 0. Después hice la búsqueda de pedidos por número y por nombre del cliente, la modificación de la cantidad y el estado, y la eliminación con confirmación. Por último agregué un Set para contar los clientes sin repetirlos. Con esto ya quedaron funcionando la List, el Set y el Map.
- **15 de octubre:** hice el resumen del restaurante con el total vendido, los pedidos pendientes y entregados, los clientes diferentes y el promedio por pedido. Agregué una constante con el nombre del restaurante para usarla en el menú y en el resumen. Como mejora propia, cambié la forma de elegir el plato: ahora se escoge por número en vez de escribir el nombre, porque probando me di cuenta de que era más natural y así se evitan errores con mayúsculas y tildes. Por último completé el README con las instrucciones de ejecución y la estructura del proyecto.