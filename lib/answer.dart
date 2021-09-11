import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  const Answer({Key? key, required this.selectHandler}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
            onPressed: selectHandler,
            child: const Text('Answer 1')),
      ),
    );
  }
}
