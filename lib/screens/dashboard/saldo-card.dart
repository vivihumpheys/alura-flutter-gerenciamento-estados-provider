import 'package:bytebank/models/saldo-model.dart';
import 'package:flutter/material.dart';

class SaldoCard extends StatelessWidget {
  final Saldo saldo;

  const SaldoCard(this.saldo);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        child: Text(
          saldo.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        padding: EdgeInsets.all(8.0),
      ),
    );
  }
}
