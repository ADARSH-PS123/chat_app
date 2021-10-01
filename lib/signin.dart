import 'package:chat_app/widget/appButtons.dart';
import 'package:chat_app/widget/TextButtons.dart';
import 'package:chat_app/widget/mainAppBar.dart';
import 'package:chat_app/widget/textfield.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  Widget divider = Divider(
    height: 30,
  );
  final formKey = GlobalKey<FormState>();

  TextEditingController signInEmail = TextEditingController();
  TextEditingController signInPassword = TextEditingController();
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
                  Form(
                    key: formKey,
                    child: Column(children: [
                      TextFields(
                        validator: (val) {},
                        controller: signInEmail,
                        textType: TextInputType.emailAddress,
                        text: "Enter Your Email",
                      ),
                      divider,
                      TextFields(
                          validator: (val) {
                            val < 2 ? print("enter char ") : null;
                          },
                          controller: signInPassword,
                          textType: TextInputType.visiblePassword,
                          text: "Enter Your password"),
                      divider,
                      AppButtons(
                        buttonText: "SignIn",
                        onPressed: () {
                          formKey.currentState!.validate();
                        },
                      ),
                      divider,
                      AppButtons(
                        buttonText: "SighUp",
                        onPressed: () {},
                      ),
                      TextButtons(
                        text: "forget password",
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      )
                    ]),
                  )
                ]))));
  }
}
