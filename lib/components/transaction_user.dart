import 'dart:math';

import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Água',
      value: 150.50,
      datetime: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Luz',
      value: 80.25,
      datetime: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Internet',
      value: 100.00,
      datetime: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Água',
      value: 150.50,
      datetime: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Luz',
      value: 80.25,
      datetime: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'Internet',
      value: 100.00,
      datetime: DateTime.now(),
    )
  ];

  void _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      datetime: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
