import 'check.dart';
import 'que_ans.dart';

Check check = Check();

class QuestionAcess {
  int _questionNumber = 0;
  final List<QueAns> _questionBank = [
    QueAns('Sharks are mammals.', false),
    QueAns(
        'Sea otters have a favorite rock they use to break open food.', true),
    QueAns('The blue whale is the biggest animal to have ever lived.', true),
    QueAns('The hummingbird egg is the world\'s smallest bird egg.', true),
    QueAns('Pigs roll in the mud because they don’t like being clean.', false),
    QueAns('Bats are blind.', false),
    QueAns('A dog sweats by panting its tongue.', false),
    QueAns('It takes a sloth two weeks to digest a meal.', true),
    QueAns('The largest living frog is the Goliath frog of West Africa.', true),
    QueAns('An ant can lift 1,000 times its body weight.', false),
  ];

  bool getNextQuestion(bool ans) {
    check.checkIt(ans);
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    } else {
      _questionNumber = 0;
      return false;
    }
    return true;
  }

  String getQuestion() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
