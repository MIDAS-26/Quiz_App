import "package:flutter/material.dart";

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
  void questionindexup() {
    setState(() {
      questionindex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
          title: Text("Quiz App"),
        ),
        body: Column(
          children: [
            Text(
              questions.elementAt(questionindex),
            ),
            RaisedButton(
              child: Text("answer1"),
              onPressed: () => questionindexup(),
            ),
            RaisedButton(
              child: Text("answer 2"),
              onPressed: () => questionindexup(),
            ),
            RaisedButton(
              child: Text("answer 3"),
              onPressed: () => questionindexup(),
            ),
          ],
        ),
      ),
    );
  }
}
