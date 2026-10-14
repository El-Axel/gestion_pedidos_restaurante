class Pedido {
  int numero;
  String nombreCliente;
  int mesa;
  String plato;
  int cantidad;
  int precioUnitario;
  String estado = 'Pendiente';

  Pedido(this.numero, this.nombreCliente, this.mesa, this.plato, this.cantidad, this.precioUnitario);
}