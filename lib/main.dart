import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var answerIndex = 0;
  void answerQuestons() {
    setState(() {
      answerIndex = answerIndex + 1;
    });
    print(answerIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favorite book',
      'what\'s your favorite pen',
      'what\'s your favorite pencil',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Subarna'),
        ),
        body: Column(
          children: [
            Text(questions[answerIndex]),
            RaisedButton(
              child: Text('This is the 1st'),
              onPressed: answerQuestons,
            ),
            RaisedButton(
              child: Text('This is the 2nd'),
              onPressed: answerQuestons,
            ),
            RaisedButton(
              child: Text('This is the 3rd'),
              onPressed: answerQuestons,
            ),
          ],
        ),
      ),
    );
  }
}