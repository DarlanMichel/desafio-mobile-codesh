import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "SplashPage"}) : super(key: key);
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 5), 
      () => Modular.to.pushReplacementNamed('/home')
    );

    return Scaffold(
        body: Center(
            child: Container(
      child: Image(
        image: AssetImage("assets/logo.png"),
      ),
    )));
  }
}
