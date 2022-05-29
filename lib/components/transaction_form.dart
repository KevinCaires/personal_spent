import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleInput = TextEditingController();
  final valueInput = TextEditingController();
  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

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
                  onPressed: () {
                    final title = titleInput.text;
                    // O "??" retorna zero caso o valor não passe no tryParse.
                    final value = double.tryParse(valueInput.text) ?? 0.0;
                    onSubmit(title, value);
                  },
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
