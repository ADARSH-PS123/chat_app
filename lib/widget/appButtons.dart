import 'package:chat_app/signup.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppButtons extends StatelessWidget {
  String buttonText;

  @override
  AppButtons({required this.buttonText, onPressed});
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 56,
        child: ElevatedButton(
            child: Text(
              buttonText,
              style: TextStyle(fontSize: 18),
            ),
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100))),
              padding: MaterialStateProperty.all(EdgeInsets.all(0)),
              backgroundColor: MaterialStateProperty.all(Colors.white),
              foregroundColor: MaterialStateProperty.all(Colors.black),
            )));
  }
}
