import 'package:flutter/material.dart';

class TextButtons extends StatelessWidget {
  String text;
  TextButtons({required this.text, onPressed});
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(decoration: TextDecoration.underline),
        ));
  }
}
