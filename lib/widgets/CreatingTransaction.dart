

import 'package:flutter/material.dart';


class CreatingTransaction extends StatefulWidget {
  final Function txcreate;

  CreatingTransaction(this.txcreate);

  @override
  _CreatingTransactionState createState() => _CreatingTransactionState();
}

class _CreatingTransactionState extends State<CreatingTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    widget.txcreate(
      enteredTitle,
      enteredAmount,
    );
    Navigator.of(context).pop();

  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
              onSubmitted: (_) => submitData(),

            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(labelText: 'Amount(in Rs)'),
              // onSubmitted: ()=> (),

            ),
            FlatButton(
              child: Text("Add Transaction"),
              textColor: Colors.purple,
              onPressed: submitData,
            ),
          ],
        ),
      ),
    );
  }
}
