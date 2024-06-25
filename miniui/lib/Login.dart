
import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  const Login({super.key});
  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            child: Container(
              height: 100,
              width: 100,
              child: Image.asset("assets/img2.png"),
            ),
          )
        ]),
    );
  }
}