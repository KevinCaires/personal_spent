import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleInput = TextEditingController();
  final valueInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleInput,
              decoration: InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              controller: valueInput,
              decoration: InputDecoration(
                labelText: 'R\$',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  onPressed: () => {},
                  child: Text('New'),
                  textColor: Colors.purple,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
