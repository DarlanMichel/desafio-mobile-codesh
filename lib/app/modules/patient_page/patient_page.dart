import 'package:flutter/material.dart';

class PatientPage extends StatefulWidget {
  final String title;
  const PatientPage({Key key, this.title = "PatientPage"}) : super(key: key);
  @override
  PatientPageState createState() => PatientPageState();
}
class PatientPageState extends State<PatientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}