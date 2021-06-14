import 'package:flutter/material.dart';

class Saldo {
  final double valor;

  Saldo(this.valor);
  @override
  String toString() => "R\$ ${valor.toString()}";
}
