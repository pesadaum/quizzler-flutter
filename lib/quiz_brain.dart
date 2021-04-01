import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  bool endQuiz = false;

  List<Question> _questionBank = [
    Question('Pavê = pavè', false),
    Question('Partida = partiel', false),
    Question('Coisinha pequena = petite choix', false),
    Question('Coisa = chose', true),
    Question('Nome = nom ', false),
    Question('Désastreux = desastrado', true),
    Question('Bobonne = Larissa', true),
    Question('Car = porquê', true),
    Question('Falha = écheque', false),
    Question('Acerto = frapper', true),
    Question('Caminhar = marcher', true),
    Question('Amor = aimer', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) _questionNumber++;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
