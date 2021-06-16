import 'package:bytebank/models/saldo-model.dart';
import 'package:bytebank/screens/dashboard/saldo-card.dart';
import 'package:bytebank/screens/deposito/formulario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bytebank'),
      ),
      body: ListView(children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: SaldoCard(),
        ),
        ElevatedButton(
            child: Text('Receber depósito'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FormularioDeposito();
                  },
                ),
              );
            }),
      ]),
    );
  }
}
