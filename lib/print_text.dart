import 'package:flutter/material.dart';

class PrintText extends StatelessWidget {
  final String text;
  PrintText(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, child: Text(text));
  }
}
