import 'package:assignment_1/print_text.dart';
import 'package:flutter/material.dart';

import './print_text.dart';
import './text_control.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var textList = ['Hello world', 'Bye world', 'Haha got heem'];
  int _textIndex = 0;
  void _changeText() {
    setState(() {
      _textIndex += 1;
    });
  }

  void _resetText() {
    setState(() {
      print('ResetText');
      _textIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Text Assignment 1'),
      ),
      body: Column(
        children: <Widget>[
          PrintText(textList[_textIndex]),
          TextControl(_changeText, _resetText, _textIndex, textList.length),
        ],
      ),
    ));
  }
}
