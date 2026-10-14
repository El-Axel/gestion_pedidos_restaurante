class Pedido {
  int numero;
  String nombreCliente;
  int mesa;
  String plato;
  int cantidad;
  int precioUnitario;
  String estado = 'Pendiente';

  Pedido(this.numero, this.nombreCliente, this.mesa, this.plato, this.cantidad, this.precioUnitario);

  int calcularTotal() {
    return cantidad * precioUnitario;
  }

  void mostrarInformacion() {
    print('Pedido #$numero | Cliente: $nombreCliente | Mesa: $mesa | '
        '$cantidad x $plato | Total: \$${calcularTotal()} | Estado: $estado');
  }
}