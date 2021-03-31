import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

main() => runApp(Questions());

class _QuestionState extends State<Questions> {
  // Definindo a Lista de Perguntas a Serem usadas
  final List<Map<String, Object>> _questions = const [
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

  // Crio uma função para definir se há pergunta selecionada:
  bool get hasQuestionsSelected {
    return _questionsSelected < _questions.length;
  }

  // Declarando uma variáel:
  var _questionsSelected = 0;

  // Definindo uma Função de conclusão para pergunta
  void _answer() {
    if (hasQuestionsSelected) {
      setState(() {
        _questionsSelected++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Função para percorrer as respostas
    // for (String textAnswer in listAnswers) {
    //   answers.add(Answer(textAnswer, _answer));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions'),
        ),
        body: hasQuestionsSelected
            ? Quiz(
                questionsSelected: _questionsSelected,
                questions: _questions,
                answer: _answer)
            : Results(),
      ),
    );
  }
}

class Questions extends StatefulWidget {
  _QuestionState createState() {
    return _QuestionState();
  }
}
