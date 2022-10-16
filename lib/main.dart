import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Hello!"),
              ElevatedButton(
                onPressed: null,
                child: Text("Answer 1"),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text("Answer 2"),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text("Answer 3"),
              ),
              Question("Answer 4"),
            ],
          ),
        ),
      ),
    );
  }
}

class Question extends StatelessWidget {

  final String question;

  const Question(this.question);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        child: ElevatedButton(
          child: Text(question),
          onPressed: null,
        )
      );
  }
}
