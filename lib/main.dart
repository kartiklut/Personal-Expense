
import 'package:flutter/material.dart';
import 'package:personal_expense/Transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      body: Container(
        child: Column(children:transactions.map((tx) {
          return Card(child: Text(tx.title),);
        }).toList(),
        )
        ,
      )
      ,
    );
  }
}
