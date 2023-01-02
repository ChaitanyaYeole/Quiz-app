import 'check.dart';
import 'que_ans.dart';

Check check = Check();

class QuestionAcess {
  int _questionNumber = 0;
  bool flag = true;
  final List<QueAns> _questionBank = [
    QueAns('questionText1', false),
    QueAns('questionText2', true),
    QueAns('questionText3', true),
    QueAns('questionText4', false),
    QueAns('questionText5', true),
  ];

  void getNextQuestion(bool ans) {
    check.checkIt(ans, flag);
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    } else {
      flag = false;
    }
  }

  String getQuestion() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
