import 'package:flutter/material.dart';
import 'package:sms/sms.dart';

void main() {
  runApp(MyApp());
  // SmsReceiver receiver = new SmsReceiver();
  // receiver.onSmsReceived.listen((SmsMessage msg) => print(msg.body));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String appTitle = "Questions";

  var questions = ["What is your name ?", "What is your age?"];

  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex += 1;

      if (questionIndex >= 2) {
        questionIndex = 0;
      }
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            FlatButton(
              child: Text("Answer"),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
