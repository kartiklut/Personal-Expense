import 'package:flutter/material.dart';
import 'package:personal_expense/models/Transaction.dart';

class TransactionList extends StatelessWidget {

  final List<Transaction> transactionsList;


  TransactionList(this.transactionsList);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionsList.map((tx) {
        return Card(
          elevation: 5,
          child: Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '\$${tx.amount.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  )),
              Column(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 1,
                        horizontal: 1,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purpleAccent,
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(2),
                      child: Text(
                        tx.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      )),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 1,
                      horizontal: 1,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blueGrey,
                        width: 2,
                      ),
                    ),
                    child: Text(
                      tx.date.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
