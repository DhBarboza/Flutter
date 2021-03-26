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
    if (hasQuestionsSelected) {
      setState(() {
        _questionsSelected++;
      });
    }
  }

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

  @override
  Widget build(BuildContext context) {
    // Criando uma Lista para receber as respostas?
    List<String> listAnswers =
        hasQuestionsSelected ? _questions[_questionsSelected]['answers'] : null;

    // Criando uma Lista de Widgets contendo as respostas?
    List<Widget> widgetsAnswers =
        listAnswers.map((text) => Answer(text, _answer)).toList();

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
            ? Column(
                children: [
                  Question(_questions[_questionsSelected]['text']),

                  // Argumento para que todos os elementos da lista sejam passados:
                  ...widgetsAnswers,
                ],
              )
            : null,
      ),
    );
  }
}

class Questions extends StatefulWidget {
  _QuestionState createState() {
    return _QuestionState();
  }
}
