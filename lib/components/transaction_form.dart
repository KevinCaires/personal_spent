import 'package:flutter/material.dart';

class TransactionForm extends StatefulWidget {
  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final titleInput = TextEditingController();

  final valueInput = TextEditingController();

  _suibmitForm() {
    final title = titleInput.text;
    // O "??" retorna zero caso o valor não passe no tryParse.
    final value = double.tryParse(valueInput.text) ?? 0.0;

    if (title.isEmpty || value <= 0) {
      return;
    }

    widget.onSubmit(title, value);
  }

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
              onSubmitted: (_) => _suibmitForm(),
              decoration: InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              controller: valueInput,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) => _suibmitForm(),
              decoration: InputDecoration(
                labelText: 'R\$',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  onPressed: _suibmitForm,
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
