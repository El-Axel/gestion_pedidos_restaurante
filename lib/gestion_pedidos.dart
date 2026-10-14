import 'dart:io';
import 'pedido.dart';

Map<String, int> carta = {
  'Bandeja paisa': 58000,
  'Ajiaco': 22000,
  'Sancocho': 37000,
  'Arroz con pollo': 21000,
  'Limonada': 6000,
};

List<Pedido> pedidos = [];

int contadorPedidos = 0;

int leerEntero(String mensaje) {
  int? numero;

  while (numero == null) {
    stdout.write(mensaje);
    String entrada = stdin.readLineSync()!;

    numero = int.tryParse(entrada);

    if (numero == null) {
      print('Debe escribir un número válido, intente de nuevo.');
    }
  }

  return numero;
}

int leerEnteroPositivo(String mensaje) {
  int numero = leerEntero(mensaje);

  while (numero <= 0) {
    print('El número debe ser mayor que 0, intente de nuevo.');
    numero = leerEntero(mensaje);
  }

  return numero;
}

void mostrarCarta() {
  print('\n----- CARTA DEL RESTAURANTE -----');

  for (String plato in carta.keys) {
    print('$plato: \$${carta[plato]}');
  }

  print('---------------------------------');
}

void registrarPedido() {
  print('\n---REGISTRAR PEDIDO---');

  mostrarCarta();

  stdout.write('Nombre del cliente: ');
  String nombreCliente = stdin.readLineSync()!;

  int mesa = leerEnteroPositivo('Número de mesa: ');

  stdout.write('Plato (escríbalo igual que en la carta): ');
  String plato = stdin.readLineSync()!;

  while (!carta.containsKey(plato)) {
    print('El plato "$plato" no está en la carta, intente de nuevo.');
    stdout.write('Plato (escríbalo igual que en la carta): ');
    plato = stdin.readLineSync()!;
  }

  int cantidad = leerEnteroPositivo('Cantidad: ');

  int precioUnitario = carta[plato]!;

  contadorPedidos++;

  Pedido nuevoPedido = Pedido(contadorPedidos, nombreCliente, mesa, plato, cantidad, precioUnitario);

  pedidos.add(nuevoPedido);

  print('\nPedido registrado correctamente');
  nuevoPedido.mostrarInformacion();
}

void listarPedidos() {
  print('\n---PEDIDOS REGISTRADOS---');

  if (pedidos.isEmpty) {
    print('No hay pedidos registrados todavía');
  } else {
    for (Pedido pedido in pedidos) {
      pedido.mostrarInformacion();
    }

    print('\nTotal de pedidos: ${pedidos.length}');
  }
}


Pedido? encontrarPedido(int numero) {
  for (Pedido pedido in pedidos) {
    if (pedido.numero == numero) {
      return pedido;
    }
  }

  return null;
}

void buscarPedidoPorNumero() {
  print('\n---BUSCAR PEDIDO POR NÚMERO---');

  if (pedidos.isEmpty) {
    print('No hay pedidos registrados todavía');
  } else {
    int numero = leerEnteroPositivo('Número del pedido: ');
    Pedido? pedidoEncontrado = encontrarPedido(numero);

    if (pedidoEncontrado != null) {
      print('\nPedido encontrado');
      pedidoEncontrado.mostrarInformacion();
    } else {
      print('No existe un pedido con el número $numero');
    }
  }
}