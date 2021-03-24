import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // Declarando variável:
  final String txt;

  // Definindo Função do onPressed:
  final void Function() fnSelected;

  // Chamando construtor:
  Answer(this.txt, this.fnSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue[500],
        child: Text(txt),
        onPressed: fnSelected,
      ),
    );
  }
}
