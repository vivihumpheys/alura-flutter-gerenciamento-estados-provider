import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/saldo-model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormularioDeposito extends StatelessWidget {
  final String _tituloAppBar = 'Receber depósito';
  final String _dicaCampoValor = '0.00';
  final String _rotuloCampoValor = 'Valor';
  final String _textoBotaoConfirmar = 'Confirmar';
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
              dica: _dicaCampoValor,
              controlador: _controladorCampoValor,
              rotulo: _rotuloCampoValor,
              icone: Icons.monetization_on,
            ),
            ElevatedButton(
              child: Text(_textoBotaoConfirmar),
              onPressed: () => _criaDeposito(context),
            ),
          ],
        ),
      ),
    );
  }

  _criaDeposito(BuildContext context) {
    final double valor = double.tryParse(_controladorCampoValor.text);
    final depositoValido = _validaDeposito(valor);

    if (depositoValido) {
      _atualizaEstado(context, valor);
      Navigator.pop(context);
    }
  }

  _validaDeposito(valor) {
    final _campoPreenchido = valor != null;
    return _campoPreenchido;
  }

  _atualizaEstado(context, valor) {
    Provider.of<Saldo>(context, listen: false).adiciona(valor);
  }
}
