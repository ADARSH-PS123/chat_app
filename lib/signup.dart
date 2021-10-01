import 'package:chat_app/widget/appButtons.dart';
import 'package:chat_app/widget/TextButtons.dart';
import 'package:chat_app/widget/mainAppBar.dart';
import 'package:chat_app/widget/textfield.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<SignUp> {
  Widget divider = Divider(
    height: 30,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: mainAppBar(),
        body: SingleChildScrollView(
            child: Container(
                color: Colors.black,
                child: Column(children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                  TextFields(
                    textType: TextInputType.emailAddress,
                    text: "Enter Your Email",
                  ),
                  divider,
                  TextFields(
                      textType: TextInputType.visiblePassword,
                      text: "Enter Your password"),
                  divider,
                  AppButtons(
                    buttonText: "SignUp",
                    onPressed: () {},
                  ),
                  divider,
                  AppButtons(
                    buttonText: "SignUp With Google",
                    onPressed: () {
                      print("hello");
                    },
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(children: [
                        Text(
                          "Already have account ?",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextButtons(
                          text: "SignIn",
                          onPressed: () {
                            print("onPodjdjd");
                          },
                        ),
                      ])),
                  SizedBox(
                    height: MediaQuery.of(context).size.width,
                  ),
                ]))));
  }
}
