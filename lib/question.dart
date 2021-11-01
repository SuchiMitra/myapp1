import 'package:flutter/cupertino.dart';
class Question extends StatelessWidget {
var questionText;
Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      style: TextStyle(fontSize: 45),
    );
  }
}