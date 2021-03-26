import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './question.dart';
import './answer.dart';

main() => runApp(Questions());

class _QuestionState extends State<Questions> {
  // Declarando uma variáel:
  var _questionsSelected = 0;

  // Definindo uma Função de conclusão para pergunta
  void _answer() {
    setState(() {
      _questionsSelected++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Definindo a Lista de Perguntas a Serem usadas
    final List<Map<String, Object>> questions = [
      {
        'text': 'Qual seu peso médio?',
        'answers': [
          'Menor que 40kg',
          'Entre 40kg e 60kg',
          'Entre 60kg e 80kg',
          'Acima de 90kg'
        ],
      },
      {
        'text': 'Qual seu o sua altura?',
        'answers': [
          'Menor que 1,45m',
          'Entre 1,45m e 1,65',
          'Entre 1,65 e 1,80',
          'Acima de 1,80'
        ]
      },
      {
        'text': 'qual sua regularidade com exercícios fisicos?',
        'answers': [
          'Sedentário',
          'Baixa (Menor 2x por semana)',
          'Regular (3x por semana)',
          'Alta (Rotina semanal de exercícios'
        ]
      },
    ];

    // Criando uma Lista de Widgets contendo as respostas?
    List<Widget> answers = [];

    // Função para percorrer as respostas
    for (String textAnswer in questions[_questionsSelected]['answers']) {
      answers.add(Answer(textAnswer, _answer));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions'),
        ),
        body: Column(
          children: [
            Question(questions[_questionsSelected]['text']),

            // Argumento para que todos os elementos da lista sejam passados:
            ...answers,
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
