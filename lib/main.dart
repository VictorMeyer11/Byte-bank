import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TransactionForm()
      )
    );
  }
}

class TransactionForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Criando transferências')),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(
                fontSize: 24.0
              ),
              decoration: InputDecoration(
                labelText: "Número da conta",
                hintText: "0000"
              ),
              keyboardType: TextInputType.number
            )
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(
                fontSize: 24.0
              ),
              decoration: InputDecoration(
                icon: Icon(Icons.monetization_on),
                labelText: "Valor",
                hintText: "0.00"
              ),
              keyboardType: TextInputType.number
            )
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Confirmar")
          )
        ]
      )
    );
  }
}

class TransactionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências')
      ),
      body: Column(
        children: <Widget>[
          TransactionItem(Transaction(100.0, 1000)),
          TransactionItem(Transaction(200.0, 2000)),
          TransactionItem(Transaction(300.0, 3000)),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      )
    );
  }
}

class TransactionItem extends StatelessWidget {
  final Transaction _transaction;

  TransactionItem(this._transaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transaction.valor.toString()),
        subtitle: Text(_transaction.numeroConta.toString()),
      )
    );
  }
}

class Transaction {
  final double valor;
  final int numeroConta;

  Transaction(this.valor, this.numeroConta);
}