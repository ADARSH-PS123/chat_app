import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  TextInputType textType;
  String text;
  TextFields(
      {required this.textType, required this.text, controller, validator});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
          keyboardType: textType,
          onTap: () {},
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(color: Colors.white),
          )),
    );
  }
}
