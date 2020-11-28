import 'dart:async';

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
  DateTime _selectedDate = DateTime.now();
  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);
    final enteredDate = _selectedDate;
    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    widget.txcreate(
      enteredTitle,
      enteredAmount,
      enteredDate
    );
    Navigator.of(context).pop();

  }


  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked =
    await showDatePicker(context: context, initialDate: _selectedDate, firstDate: DateTime(2015, 8), lastDate: DateTime(2101));
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
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
            Text("${_selectedDate.toLocal()}".split(' ')[0]),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              onPressed: () => _selectDate(context),
              child: Text('Select date'),
              textColor: Colors.purple,
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
