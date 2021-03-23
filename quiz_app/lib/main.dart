import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(Questions());

class QuestionState extends State<Questions> {
  // Declarando uma variáel:
  var questionsSelected = 0;

  // Definindo uma Função de conclusão para pergunta
  void answer() {
    setState(() {
      questionsSelected++;
    });
    print(questionsSelected);
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
            Text(questions[questionsSelected]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: answer,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: answer,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: answer,
            ),
          ],
        ),
      ),
    );
  }
}

class Questions extends StatefulWidget {
  QuestionState createState() {
    return QuestionState();
  }
}
