import 'package:flutter/material.dart';

class DummyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DummyPageState();
}

class DummyPageState extends State<DummyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          color: Colors.redAccent,
          margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: Text("占位页面")
      ),
    );
  }

}