import 'package:flutter/material.dart';

class Saldo extends ChangeNotifier {
  double valor;

  void adiciona(double valor) {
    this.valor += valor;

    notifyListeners();
  }

  void subtrai(double valor) {
    this.valor -= valor;
    notifyListeners();
  }

  Saldo(this.valor);
  @override
  String toString() => "R\$ ${valor.toString()}";
}
