import './transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: 't1', date: DateTime.now(), amount: 85, title: 'New Shirt'),
    Transaction(id: 't2', date: DateTime.now(), amount: 89, title: 'New Pant'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Expense Mana"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Card(
                color: Colors.blue,
                child: Text('CHART'),
              ),
            ),
            Column(
              children: transactions.map((tx) {
                return Card(
                    child: Row(
                  children: [
                    Container(
                      child: Text(tx.amount.toString()),
                    ),
                    Column(
                      children: [Text(tx.title), Text(tx.date.toString())],
                    )
                  ],
                ));
              }).toList(),
            )
          ],
        ));
  }
}
