import 'questions.dart';

class Helper {
  int _questionNumber = 0;
  List<Question> _questionData = [
    Question(
        'Olá futuro bruxo(a)! Vamos descobrir qual é a casa ideal para você em Hogwarts? E a primeira questão é: com quais dos substantivos você se identifica mais?',
        'Coragem e gentileza',
        'Ambição e inteligência'),
    Question(
        'Você prefere quebrar as regras e conquistar algo de forma rápida ou prefere utilizar a inteligência e estudar para então conquistar?',
        'Prefiro quebrar as regras',
        'Utilizo a inteligência e estudos'),
    Question('O que se encaixa melhor com o seu perfil?', 'Ousadia e astúcia',
        'Paciência e sinceridade'),
    Question(
        'Você ficará muito bem aos cuidados da SONSERINA', 'Refazer teste', ''),
    Question('Você ficará muito bem aos cuidados da LUFA-LUFA!',
        'Refazer teste', ''),
    Question('Você ficará muito bem aos cuidados da GRIFINÓRIA!',
        'Refazer teste', ''),
    Question(
        'Você ficará muito bem aos cuidados da CORVINAL!', 'Refazer teste', '')
  ];

  String getQuestion() {
    return _questionData[_questionNumber].questionTitle;
  }

  String getChoice1() {
    return _questionData[_questionNumber].choice1;
  }

  String getChoice2() {
    return _questionData[_questionNumber].choice2;
  }

  void nextQuestion(int userChoice) {
    if (userChoice == 1 && _questionNumber == 0) {
      _questionNumber = 2;
    } else if (userChoice == 2 && _questionNumber == 0) {
      _questionNumber = 1;
    } else if (userChoice == 1 && _questionNumber == 1) {
      _questionNumber = 3;
    } else if (userChoice == 2 && _questionNumber == 1) {
      _questionNumber = 6;
    } else if (userChoice == 1 && _questionNumber == 2) {
      _questionNumber = 5;
    } else if (userChoice == 2 && _questionNumber == 2) {
      _questionNumber = 4;
    } else if (_questionNumber == 3 ||
        _questionNumber == 4 ||
        _questionNumber == 5 ||
        _questionNumber == 6) {
      restart();
    }
  }

  void restart() {
    _questionNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_questionNumber == 0 || _questionNumber == 1 || _questionNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
