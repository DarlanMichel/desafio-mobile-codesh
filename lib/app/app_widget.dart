import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Challenge 2021',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(4, 53, 96, 1),
        accentColor: Color.fromRGBO(27, 175, 172, 1),
        backgroundColor: Color.fromRGBO(250, 174, 49, 1)
      ),
      debugShowCheckedModeBanner: false,
    ).modular();
  }
}