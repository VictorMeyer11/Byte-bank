import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    body: TransactionsList(),
    appBar: AppBar(
      title: Text('Transferências'),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {  },
      child: Icon(Icons.add),
    ),
  ),
));

class TransactionsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionItem(Transaction(100.0, 1000)),
        TransactionItem(Transaction(200.0, 2000)),
        TransactionItem(Transaction(300.0, 3000)),
      ],
    );
  }
}

class TransactionItem extends StatelessWidget {

  final Transaction _transferencia;

  TransactionItem(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      )
    );
  }
}

class Transaction {
  final double valor;
  final int numeroConta;

  Transaction(this.valor, this.numeroConta);
}