import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // Declarando variável do Tipo caracter:
  final String txt;

  // Chamo o Construtor:
  Question(this.txt);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        txt,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
