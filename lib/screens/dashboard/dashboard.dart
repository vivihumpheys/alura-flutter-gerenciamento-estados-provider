import 'package:bytebank/models/saldo-model.dart';
import 'package:bytebank/screens/dashboard/saldo-card.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bytebank'),
      ),
      body: Align(
        child: SaldoCard(
          Saldo(10.00),
        ),
        alignment: Alignment.topCenter,
      ),
    );
  }
}
