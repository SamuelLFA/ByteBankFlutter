import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = 'Criando Transferência';

const _labelNumConta = 'Número da Conta';
const _labelValor = 'Valor';
const _hintNumConta = '00000';
const _hintValor = '0.00';

const _textoBotaoConfirmar = 'Confirmar';

class FormularioTransferencia extends StatefulWidget {
  @override
  _FormularioTransferenciaState createState() =>
      _FormularioTransferenciaState();
}

class _FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controllerNumeroConta = TextEditingController();
  final TextEditingController _controllerCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new Editor(
              controller: _controllerNumeroConta,
              labelText: _labelNumConta,
              hint: _hintNumConta,
            ),
            new Editor(
              controller: _controllerCampoValor,
              labelText: _labelValor,
              hint: _hintValor,
              icon: Icons.monetization_on,
            ),
            RaisedButton(
              child: Text(
                _textoBotaoConfirmar,
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => _criaTransferencia(context),
            ),
          ],
        ),
      ),
    );
  }

  _criaTransferencia(BuildContext context) {
    final int numeroConta = int.tryParse(_controllerNumeroConta.text);
    final double valor = double.tryParse(_controllerCampoValor.text);
    if (numeroConta != null && valor != null) {
      final transferencia =
          Transferencia(numeroConta: numeroConta, valor: valor);
      Navigator.pop(context, transferencia);
    }
  }
}
