Map<String, int> carta = {
  'Bandeja paisa': 58000,
  'Ajiaco': 22000,
  'Sancocho': 37000,
  'Arroz con pollo': 21000,
  'Limonada': 6000,
};

void mostrarCarta() {
  print('\n----- CARTA DEL RESTAURANTE -----');

  for (String plato in carta.keys) {
    print('$plato: \$${carta[plato]}');
  }

  print('---------------------------------');
}