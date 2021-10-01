import 'package:chat_app/signin.dart';
import 'package:chat_app/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Wrapper());
}

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "chat app",
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
