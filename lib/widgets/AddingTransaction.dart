import 'package:flutter/material.dart';
import 'package:personal_expense/models/Transaction.dart';
import 'package:personal_expense/widgets/CreatingTransaction.dart';
import 'package:personal_expense/widgets/transactions_list.dart';

class AddingTransaction extends StatefulWidget {
  @override
  AddingTransactionState createState() => AddingTransactionState();
}

class AddingTransactionState extends State<AddingTransaction> {
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

  void addNewTransaction(String txtitle, double txamount) {
    final newTx = Transaction(id: DateTime.now().toString(), title: txtitle, amount: txamount, date: DateTime.now());
    setState(() {
      transactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[CreatingTransaction(addNewTransaction), TransactionList(transactions)],
    );
  }
}
