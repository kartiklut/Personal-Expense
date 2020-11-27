import 'package:flutter/material.dart';
import 'package:personal_expense/widgets/AddingTransaction.dart';
import 'package:personal_expense/widgets/CreatingTransaction.dart';
import 'file:///F:/Flutter%20Projects/personal_expense/lib/models/Transaction.dart';
import 'package:personal_expense/widgets/transactions_list.dart';

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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text("chart"),
              ],
            ),
            AddingTransaction(),
          ],
        ),
      ),
    );
  }
}
