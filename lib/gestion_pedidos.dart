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

  stdout.write('Número de mesa: ');
  int mesa = int.parse(stdin.readLineSync()!);

  stdout.write('Plato (escríbalo igual que en la carta): ');
  String plato = stdin.readLineSync()!;

  if (carta.containsKey(plato)) {
    stdout.write('Cantidad: ');
    int cantidad = int.parse(stdin.readLineSync()!);

    int precioUnitario = carta[plato]!;

    contadorPedidos++;

    Pedido nuevoPedido = Pedido(contadorPedidos, nombreCliente, mesa, plato, cantidad, precioUnitario);

    pedidos.add(nuevoPedido);

    print('\nPedido registrado correctamente');
    nuevoPedido.mostrarInformacion();
  } else {
    print('El plato "$plato" no está en la carta');
  }
}