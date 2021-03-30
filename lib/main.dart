import "package:flutter/material.dart";

import "./question.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionindex = 0;
  void _questionindexup() {
    setState(() {
      questionindex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      //"_" is used to make it private so that it can be accessed from current file only
      "What's your favourite colour?",
      "What's your favourite animal?",
      "What's your favourite car?"
    ];
    if (questionindex > 2) {
      questionindex = 0;
    }
    ;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App",
              style: TextStyle(fontSize: 28), textAlign: TextAlign.center),
        ),
        body: Column(
          children: [
            Question(questions.elementAt(questionindex)),
            RaisedButton(
              child: Text("answer1"),
              onPressed: () => _questionindexup(),
            ),
            RaisedButton(
              child: Text("answer 2"),
              onPressed: () => _questionindexup(),
            ),
            RaisedButton(
              child: Text("answer 3"),
              onPressed: () => _questionindexup(),
            ),
          ],
        ),
      ),
    );
  }
}
