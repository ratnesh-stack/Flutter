import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tx) {
        return Card(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purple,
                    width: 2,
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  '\$${tx.amount}',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tx.title,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    DateFormat().format(tx.date),
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
