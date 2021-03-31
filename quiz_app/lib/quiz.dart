import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionsSelected;
  final void Function() answer;

  Quiz({
    @required this.questions,
    @required this.questionsSelected,
    @required this.answer,
  });

  // Crio uma função para definir se há pergunta selecionada:
  bool get hasQuestionsSelected {
    return questionsSelected < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    // Criando uma Lista para receber as respostas?
    List<Map<String, Object>> listAnswers =
        hasQuestionsSelected ? questions[questionsSelected]['answers'] : null;

    return Column(
      children: [
        Question(questions[questionsSelected]['text']),

        // Argumento para que todos os elementos da lista sejam passados:
        ...listAnswers.map((r) => Answer(r['txt'], answer)).toList(),
      ],
    );
  }
}
