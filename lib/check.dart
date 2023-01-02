import 'package:flutter/material.dart';
import 'package:quizee/main.dart';

class Check {
  List<Icon> check = [];
  void checkIt(bool ans) {
    if (questionAcess.getAnswer() == ans) {
      check.add(
        const Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
    } else {
      check.add(
        const Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
    }
  }
}
