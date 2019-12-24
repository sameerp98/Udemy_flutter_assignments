import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function changeText, resetText;
  final int startIndex, endIndex;
  TextControl(this.changeText, this.resetText, this.startIndex, this.endIndex);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('Press me to change text'),
        onPressed: () {
          // print('$startIndex $endIndex');
          if (startIndex < endIndex - 1) {
            changeText();
          }
          if (startIndex == endIndex - 1) {
            resetText();
          }
        },
      ),
    );
  }
}
