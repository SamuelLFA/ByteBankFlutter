class Transferencia {
  final double _valor;
  final int _numeroConta;

  get valor => _valor;
  get numeroConta => _numeroConta;

  Transferencia({numeroConta, valor})
      : _valor = valor,
        _numeroConta = numeroConta;

  @override
  String toString() {
    return 'Valor: $_valor, Numero da conta: $_numeroConta';
  }
}
