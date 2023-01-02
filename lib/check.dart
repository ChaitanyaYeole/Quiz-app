import 'package:flutter/material.dart';
import 'package:quizee/main.dart';

class Check {
  List<Icon> check = [];
  void checkIt(bool ans, bool flag) {
    if (questionAcess.getAnswer() == ans && flag == true) {
      check.add(
        const Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
    } else if (flag == true) {
      check.add(
        const Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
    }
  }
}
