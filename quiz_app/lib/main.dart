import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './quiz.dart';
import './result.dart';

main() => runApp(Questions());

class _QuestionState extends State<Questions> {
  // Definindo a Lista de Perguntas a Serem usadas
  final List<Map<String, Object>> _questions = const [
    {
      'text': 'Qual seu peso médio?',
      'answers': [
        {'txt': 'Menor que 40kg', 'nota': 5},
        {'txt': 'Entre 40kg e 60kg', 'nota': 15},
        {'txt': 'Entre 60kg e 80kg', 'nota': 20},
        {'txt': 'Acima de 90kg', 'nota': 10},
      ],
    },
    {
      'text': 'Qual seu o sua altura?',
      'answers': [
        {'txt': 'Menor que 1,45m', 'nota': 5},
        {'txt': 'Entre 1,45m e 1,65', 'nota': 10},
        {'txt': 'Entre 1,65 e 1,80', 'nota': 15},
        {'txt': 'Acima de 1,80', 'nota': 20},
      ]
    },
    {
      'text': 'qual sua regularidade com exercícios fisicos?',
      'answers': [
        {'txt': 'Sedentário', 'nota': 5},
        {'txt': 'Baixa (Menor 2x por semana)', 'nota': 10},
        {'txt': 'Regular (3x por semana)', 'nota': 15},
        {'txt': 'Alta (Rotina semanal de exercícios', 'nota': 20},
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
