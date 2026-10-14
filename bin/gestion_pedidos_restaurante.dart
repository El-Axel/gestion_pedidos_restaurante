import 'dart:io';
import 'package:gestion_pedidos_restaurante/gestion_pedidos.dart';
import 'package:gestion_pedidos_restaurante/pedido.dart';

void main(List<String> arguments) {

  Pedido pruebaPedido = Pedido(1, 'Juan', 4, 'Ajiaco', 2, 22000);
  pruebaPedido.mostrarInformacion();

  int opcion = -1;

  print('*** Bienvenido al sistema de pedidos ***');

  while (opcion != 0) {
    print('\nSISTEMA DE GESTIÓN DE PEDIDOS - RESTAURANTE');
    print('** RESTAURANTE EL BUEN SABOR **');
    print('1. Registrar pedido');
    print('2. Consultar todos los pedidos');
    print('3. Buscar pedido');
    print('4. Modificar pedido');
    print('5. Eliminar pedido');
    print('6. Mostrar resumen');
    print('0. Salir');

    stdout.write('\nSeleccione una opción: ');

    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        registrarPedido();
        break;
      case 2:
        print('Opción: Consultar todos los pedidos (en construcción)');
        break;
      case 3:
        print('Opción: Buscar pedido (en construcción)');
        break;
      case 4:
        print('Opción: Modificar pedido (en construcción)');
        break;
      case 5:
        print('Opción: Eliminar pedido (en construcción)');
        break;
      case 6:
        print('Opción: Mostrar resumen (en construcción)');
        break;
      case 0:
        print('Gracias por usar el sistema. ¡Hasta pronto!');
        break;
      default:
        print('Opción no válida, intente de nuevo.');
        break;
    }
  }
}