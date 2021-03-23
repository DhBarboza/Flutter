import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './question.dart';

main() => runApp(Questions());

class _QuestionState extends State<Questions> {
  // Declarando uma variáel:
  var _questionsSelected = 0;

  // Definindo uma Função de conclusão para pergunta
  void _answer() {
    setState(() {
      _questionsSelected++;
    });
    print(_questionsSelected);
  }

  @override
  Widget build(BuildContext context) {
    // Definindo a Lista de Perguntas a Serem usadas
    final List<String> questions = [
      'Qual seu peso médio?',
      'Qual seu o sua altura?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions'),
        ),
        body: Column(
          children: [
            Question(questions[_questionsSelected]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: _answer,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: _answer,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: _answer,
            ),
          ],
        ),
      ),
    );
  }
}

class Questions extends StatefulWidget {
  _QuestionState createState() {
    return _QuestionState();
  }
}
