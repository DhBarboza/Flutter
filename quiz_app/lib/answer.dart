import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String txt;

  Answer(this.txt);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(txt),
      onPressed: _answer,
    );
  }
}
