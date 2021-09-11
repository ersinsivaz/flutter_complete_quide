import 'package:flutter/material.dart';
import 'package:flutter_complete_quide/answer.dart';
import 'package:flutter_complete_quide/question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print('$_questionIndex answered');
  }

  var questions = [
    'What is your favorite lamba1?',
    'What is your favorite sehpa?',
    'What is your favorite masa?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wellcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Column(
          children: [
            Question(questionText: questions[_questionIndex]),
            Answer(selectHandler: _answerQuestion),
            Answer(selectHandler: _answerQuestion),
            Answer(selectHandler: _answerQuestion),
          ],
        ),
      ),
    );
  }
}
